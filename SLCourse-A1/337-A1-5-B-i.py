x = int(input("What number you want to be the dividend?"))
y = int(input("What number you want to be the divisor?"))
z = 0
try:
    z = x / y
    print (z)
except ZeroDivisionError:
    print ("Division by zero: undefined")
