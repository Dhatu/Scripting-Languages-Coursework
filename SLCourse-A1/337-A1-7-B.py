

def even(x):     
    if x % 2 == 0:
         return True
    else: 
        return False

def listIndices(alist, even):
    output = list(map(lambda a:even(a), alist))
    for i in output:
        if output[i] == False:
            return output[i]
    return True

print ("IF List is AllEvenIndices: First, Enter the number(length) of elements of array ")
n = int(input())
print ("IF List is AllEvenIndices: First, Enter the number sequence of elements of array (with spaces in btwn)")
arr = input()   # takes the whole line of n numbers
initarray = list(map(int,arr.split(' ')))
output1 = listIndices(initarray, even)
print (output1)


