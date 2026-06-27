import re
import sys
from typing import List


def parse_smt_model(model_str: str) -> List[List[int]]:
    """
    Parse an SMT model string containing p_i_j_k boolean variables
    and return a 4x4 table where table[i][j] = k.
    """
    # Initialize 4x4 table with zeros (1-indexed rows/cols internally, 0-indexed list)
    table = [[0 for _ in range(4)] for _ in range(4)]
    
    # Pattern to match: (define-fun p_i_j_k () Bool true)
    pattern = r'\(define-fun p_(\d)_(\d)_(\d) \(\) Bool\s+(true|false)\)'
    
    for match in re.finditer(pattern, model_str):
        row = int(match.group(1)) - 1  # convert to 0-indexed
        col = int(match.group(2)) - 1
        val = int(match.group(3))
        is_true = match.group(4) == 'true'
        
        if is_true:
            table[row][col] = val
    
    return table


def _extract_and_clauses(or_inner: str) -> List[str]:
    """Extract top-level (and ...) clauses from an (or ...) inner content."""
    clauses: List[str] = []
    i = 0
    while i < len(or_inner):
        # skip whitespace
        while i < len(or_inner) and or_inner[i] in ' \n\r\t':
            i += 1
        if i >= len(or_inner):
            break
        if or_inner[i:i+4] == '(and':
            depth = 0
            start = i
            while i < len(or_inner):
                if or_inner[i] == '(':
                    depth += 1
                elif or_inner[i] == ')':
                    depth -= 1
                    if depth == 0:
                        clauses.append(or_inner[start:i+1])
                        i += 1
                        break
                i += 1
        else:
            i += 1
    return clauses


def parse_smt_func_model(model_str: str) -> List[List[int]]:
    """
    Parse an SMT model string containing a function p with Int arguments
    and return a 4x4 table where table[i][j] = k.

    Format: (define-fun p ((x!0 Int) (x!1 Int) (x!2 Int)) Bool (or (and ...) ...))

    Each 'and' clause constrains x!0 (row), x!1 (col), x!2 (value) using
    inequalities (<= N x!K) and (not (<= N+1 x!K)) to specify a single value.
    """
    # Initialize 4x4 table with zeros
    table = [[0 for _ in range(4)] for _ in range(4)]

    # Locate the define-fun p block
    idx = model_str.find('(define-fun p')
    if idx == -1:
        return table

    # Find the start of the body (after "Bool")
    body_start = model_str.find('Bool', idx)
    if body_start == -1:
        return table
    body_start += 4  # skip 'Bool'
    while body_start < len(model_str) and model_str[body_start] in ' \n\r\t':
        body_start += 1

    if body_start >= len(model_str) or model_str[body_start] != '(':
        return table

    # Find matching close paren for the whole body
    depth = 0
    end_pos = body_start
    while end_pos < len(model_str):
        if model_str[end_pos] == '(':
            depth += 1
        elif model_str[end_pos] == ')':
            depth -= 1
            if depth == 0:
                break
        end_pos += 1

    body = model_str[body_start:end_pos + 1]

    # Strip outer (or ...)
    or_match = re.match(r'\(or\s+(.*)\)\s*', body, re.DOTALL)
    if not or_match:
        return table

    inner = or_match.group(1)
    and_clauses = _extract_and_clauses(inner)

    for clause in and_clauses:
        vals = {}
        for k in range(3):
            var = f'x!{k}'
            max_n = 0
            # Match both direct (<= N x!K) and negated not (<= N x!K)
            # Only count direct constraints (group(1) is None) — the largest N is the value
            for m in re.finditer(r'(not\s+)?\(<= (\d+)\s+' + re.escape(var) + r'\)', clause):
                if m.group(1) is None:  # not preceded by "not"
                    n = int(m.group(2))
                    if n > max_n:
                        max_n = n
            vals[k] = max_n

        if all(k in vals for k in range(3)):
            row = vals[0] - 1   # convert to 0-indexed
            col = vals[1] - 1
            val = vals[2]
            if 0 <= row < 4 and 0 <= col < 4 and 1 <= val <= 4:
                table[row][col] = val

    return table


def print_table(table: List[List[int]]) -> None:
    """Pretty-print the 4x4 table."""
    for row in table:
        print(' '.join(str(cell) for cell in row))


if __name__ == '__main__':
    if len(sys.argv) > 1:
        with open(sys.argv[1], 'r', encoding='utf-8') as f:
            model_input = f.read()
    else:
        model_input = sys.stdin.read()

    # Detect format: p_i_j_k (original) vs p as a function (new)
    if 'define-fun p_' in model_input:
        result = parse_smt_model(model_input)
    elif 'define-fun p (' in model_input:
        result = parse_smt_func_model(model_input)
    else:
        print("Error: Unknown SMT model format", file=sys.stderr)
        sys.exit(1)

    print_table(result)
