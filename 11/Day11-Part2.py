#!/bin/env python3

def IncrementLetter(x):
    list1 = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    list2 = ['b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'a']
    return list2[list1.index(x)]

def IncrementString(x):
    returnString=""
    incrementFlag=True
    for char in x[::-1]:
        if incrementFlag:
            char=IncrementLetter(char)
            if char != 'a':
                incrementFlag = False
        returnString=f"{char}{returnString}"
    return returnString    

def Condition1(x):
    alphabet = ['abc', 'bcd', 'cde', 'def', 'efg', 'fgh', 'ghi', 'hij', 'ijk', 'jkl', 'klm', 'lmn', 'mno', 'nop', 'opq', 'pqr', 'qrs', 'rst', 'stu', 'tuv', 'uvw', 'vwx', 'wxy', 'xyz']
    for pattern in alphabet:
        if x.find(pattern) != -1:
            return True
    return False

def Condition2(x):
    alphabet = ['o', 'i', 'l']
    for pattern in alphabet:
        if x.find(pattern) != -1:
            return False
    return True

def Condition3(x):
    alphabet = ['aa', 'bb', 'cc', 'dd', 'ee', 'ff', 'gg', 'hh', 'ii', 'jj', 'kk', 'll', 'mm', 'nn', 'oo', 'pp', 'qq', 'rr', 'ss', 'tt', 'uu', 'vv', 'ww', 'xx', 'yy', 'zz']
    count=0
    for i in range(2):
        for pattern in alphabet:
                    location = x.find(pattern)
                    if location != -1:
                        x = f"{x[0:location]}${x[location + 2:]}"
                        count += 1
    if count >= 2:
        return True
    else:
        return False


challenge="hxbxxyzz"

while True:
    challenge = IncrementString(challenge)
    if Condition1(challenge):
        if Condition2(challenge):
            if Condition3(challenge):
                 break

# The answer is hxcaabcc
print(challenge)

