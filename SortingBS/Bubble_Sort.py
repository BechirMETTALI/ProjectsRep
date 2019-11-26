def bubble_sort(lis):
    ech = True
    while ech:
        ech = False
        for i in range(len(lis) - 1):
            if lis[i] > lis[i + 1]:
                lis[i], lis[i + 1] = lis[i + 1], lis[i]
                ech = True

