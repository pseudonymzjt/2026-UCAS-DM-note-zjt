"""Print all squarefree integers ≤ n (not divisible by any perfect square > 1)."""


def squarefree(n: int) -> None:
    from math import sqrt

    A = [True] * (n + 1)

    # Sieve: for each k >= 2, mark multiples of k² as non-squarefree
    for k in range(2, int(sqrt(n)) + 1):
        sq = k * k  # k²
        for multiple in range(sq, n + 1, sq):
            A[multiple] = False

    for i in range(1, n + 1):
        if A[i]:
            print(i)


squarefree(100)
