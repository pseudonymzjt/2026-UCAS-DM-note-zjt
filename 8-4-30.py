"""
Coin change via generating functions (Rosen 8.4 Q30).

"""

from sympy import symbols

x, y = symbols("x y")
# $1 = 100 cents, so the count won't exceed 100 for cents.
TOTAL_CENTS = 100


def _poly(base_cents: int, max_count: int):
    """Generating function for one coin type: sum_{i=0}^{max_count} x^{base_cents * i}."""
    return sum(x ** (base_cents * i) for i in range(max_count + 1))


def _count_ways(pennies: int, nickels: int, dimes: int, quarters: int) -> int:
    """Multiply the four coin-type polynomials and extract the x^TOTAL_CENTS coefficient."""
    poly = _poly(1, pennies) * _poly(5, nickels) * _poly(10, dimes) * _poly(25, quarters)
    return poly.expand().coeff(x ** TOTAL_CENTS)


# a) no more than 10 pennies
coeff_a = _count_ways(pennies=10, nickels=TOTAL_CENTS // 5,
                      dimes=TOTAL_CENTS // 10, quarters=TOTAL_CENTS // 25)
print(f"a) 最多10个penny的换法: {coeff_a} 种")  # 预期: 79


# b) no more than 10 pennies AND no more than 10 nickels
coeff_b = _count_ways(pennies=10, nickels=10,
                      dimes=TOTAL_CENTS // 10, quarters=TOTAL_CENTS // 25)
print(f"b) 最多10个penny且最多10个nickel的换法: {coeff_b} 种")  # 预期: 58


# c) no more than 10 coins total
# x tracks value (¢), y tracks coin count.
P_c = sum((x * y)**i for i in range(11))       # no more than 10 pennies
N_c = sum((x**5 * y)**i for i in range(11))    # no more than 10 nickels
D_c = sum((x**10 * y)**i for i in range(11))   # no more than 10 dimes
Q_c = sum((x**25 * y)**i for i in range(5))    # no more than 4 quarters (4×25 = 100¢)

term_x100 = (P_c * N_c * D_c * Q_c).expand().coeff(x ** TOTAL_CENTS)
coeff_c = sum(term_x100.coeff(y, k) for k in range(11))
print(f"c) 总硬币数不超过10的换法: {coeff_c} 种")  # 预期: 12
