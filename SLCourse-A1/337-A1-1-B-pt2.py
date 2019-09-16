# def factorial(n, ax):     
#     if n > 1:         
#         return n * factorial(n-1)     
#     elif n == 1:         
#         return 1     
#     elif n == 0:         
#         return 1 
 
# First, write a distinct recursive version of this function which takes two arguments. 
# The first argument, n, is the number for which we are computing the factorial function.  
# The second argument, ax, is an accumulator.  Use the accumulator, ax, to pass the current, running total for the factorial function to the next recursive call. 
# Explain how the use of the accumulator changes how the recursive algorithm works. 
def tail_fact(n, ax=1):
  if n == 0: return ax
  else: return tail_fact(n-1, ax * n)

n = int(input("Please enter a whole number for factorial: "))
fact = tail_fact(n, ax=1)
print("The factorial of your inputed number", n, "is", fact)



