from time import time
from List_Generator import list_gen


def binary_s(lis, target):
    n = len(lis)
    l = 0
    r = n - 1
    while l <= r:
        mid = l + (r - l) // 2
        if lis[mid] == target:
            return mid
        if lis[mid] < target:
            l = mid + 1
        else:
            r = mid - 1
    return -1

L=list_gen()
# Access ID L[0][binary_s(L,5)]
# Access Professional Experience L[1][binary_s(L,5)]
deb = time()
# Insert Sort Function
print(binary_s(L, 5))
fin = time()
print(fin - deb)
