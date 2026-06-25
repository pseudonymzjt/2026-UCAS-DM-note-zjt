from three_num_sum import three_sum

test_cases = [
    ("基本有解", [-1, 0, 1, 2, -1, -4], 0),
    ("target在但无解", [10, 20, 30], 10),
    ("target不在数组", [1, 2, 3, 4, 5], 100),
    ("数组长度不足", [1, 2], 1),
    ("大量重复有解", [-2, -2, 0, 0, 1, 1, 2, 2, 3, 3], 1),
    ("大数值范围", [1000000, 500000, -500000, 0, 200000, -200000], 1000000),
    ("全相同元素", [5, 5, 5, 5, 5], 5),
    ("两个不同值", [1, 1, 2, 2], 1),
    ("长数组多解", list(range(-20, 21)), 0),
    ("混合正负零", [-5, -3, -1, 0, 2, 4, 6], -6),
]

for name, nums, t in test_cases:
    result = three_sum(nums.copy(), t)
    print(f"{name}: nums={nums}, t={t}")
    print(f"  result={result}")
    print()
