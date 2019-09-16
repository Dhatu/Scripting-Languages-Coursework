# Second, write a non-recursive version of this function. 
 
# Then write a small Python program to demonstrate the correctness of your implementations.  
# Test your new implementations on large values (values large enough to cause recursion depth errors for the version of the factorial function we looked at in class) 
# and see what happens.  Try to explain the results.

#factorial.py part 2
def factorial():

    n = int(input("Please enter a whole number: "))

    fact = 1

    for factor in range(1, (n + 1)):
        fact = fact * factor

    print("The factorial of your inputed number", n, "is", fact)


factorial()

