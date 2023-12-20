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

