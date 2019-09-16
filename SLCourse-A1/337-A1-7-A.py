# Write a Python function that takes two parameters as input: 
# a list of integers and the even() function: 

def even(x):     
    return x % 2 == 0
    #     return True
    # else: 
    #     return False
def listIndices(alist, even):
    count = 0
    output = []
    for row in alist:
	    if even(row):
		    output.append(count)
	    count += 1
    return print ( "[" + str(output)[1:-1] + "]")

#initarray = [1,2,3,4,5,6]
print ("ListAllEvenIndices: First, Enter the number(length) of elements of array ")
n = int(input())
print ("ListAllEvenIndices: First, Enter the number sequence of elements of array (with spaces in btwn)")
arr = input()   # takes the whole line of n numbers
initarray = list(map(int,arr.split(' ')))
foutput = listIndices(initarray, even)

# Using list comprehension, the function returns a list that 
# contains the positions of the integers in the input list for
# which even() returns true. E.g., if the input list is 
# a=[2,3,4,5,6,8], and your function is called listIndices(),
# then calling listIndices(a, even) would return [0,2,4,5].
# Write a small program to demonstrate the correctness of 
# your implementation. 
 