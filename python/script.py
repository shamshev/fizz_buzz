#!/usr/bin/python
import sys

def main():
    for i in range(1, 100):
        if i % 15 == 0:
            print(u"fizz buzz")
        elif i % 5 == 0:
            print(u"buzz")
        elif i % 3 == 0:
            print(u"fizz")
        else:
            print(i)
    return 0

if __name__ == '__main__':
    sys.exit(main())



