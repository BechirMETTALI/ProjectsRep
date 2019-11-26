#Crible method,Impair Crible method and comparing their execution time  with usual decomposition
def facteurs(n):
    s = n
    i = 2
    l = []
    while True:
        if s % i == 0:
            s = s // i
            l.append(i)
        else:

            i = i + 1
        if s == 1:
            break
    print(l)


def facteurscrible(n):
    from math import sqrt
    s = n
    i = 2
    l = []
    while True:
        if s % i == 0:
            s = s // i
            l.append(i)
        else:

            i = i + 1
        if i >= sqrt(s):
            l.append(s)

            break

            break
    print(l)


def facteurscribleimpairs(n):
    from math import sqrt
    s = n
    i = 2
    l = []
    while True:
        if s % i == 0:
            s = s // i
            l.append(i)
        else:

            i = i + 1
            if i % 2 == 0:
                i = i + 1
        if i >= sqrt(s):
            l.append(s)

            break

            break
    print(l)


from time import time

deb = time()
facteurscrible(354651654654654)
fin = time()
print(fin - deb)

deb = time()
facteurs(354651654654654)
fin = time()
print(fin - deb)

deb = time()
facteurscribleimpairs(354651654654654)
fin = time()
print(fin - deb)

