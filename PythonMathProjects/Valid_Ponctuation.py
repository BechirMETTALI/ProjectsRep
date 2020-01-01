# Classic Resolution with only ()


def valid_parentheses(strng):
    count = 0
    for i in strng:
        if i == "(":
            count += 1
        elif i == ")":
            count -= 1
        if count < 0:
            return False
    return count == 0
  
# Using Python Dictionaries Searching all (){}[]<>
iterables = iter('(){}[]<>')
dicsyntax = dict(zip(iterable, iterable))
valsyn = dicsyntax.values()


def valid_parentheses(strng):
    l = []
    for elt in strng:
        a = dicsyntax.get(elt, None)
        if a:
            l.append(a)
        elif elt in valsyn:
            if not l or elt != l.pop():
                return False
    return not l
    

  
