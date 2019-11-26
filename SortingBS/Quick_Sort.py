def partition(lis, low, high):
    pivot = lis[(low + high) // 2]
    i = low - 1
    j = high + 1
    while True:
        i += 1
        while lis[i] < pivot:
            i += 1
        j -= 1
        while lis[j] > pivot:
            j -= 1
        if i >= j:
            return j
        lis[i], lis[j] = lis[j], lis[i]


def quick_sort(lis):
    def quick_sort_rec(items, low, high):
        if low < high:
            index = partition(items, low, high)
            quick_sort_rec(items, low, index)
            quick_sort_rec((items, index + 1, high))

    quick_sort_rec(lis, 0, len(lis) - 1)


quick_sort()
