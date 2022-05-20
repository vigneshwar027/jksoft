a = 4


try:
    assert False
except AssertionError:
    print(a+2)
    print(a+x)
    print(a+2)  
    print(a+2)
else:
    print "no error"

