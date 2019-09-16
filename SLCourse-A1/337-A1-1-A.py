

def isPalindrome(str): 

    for i in range(0, len(str)/2):  
        if str[i] != str[len(str)-i-1]: 
            return False
    return True


s = input("What word do you want to find if it is a palindrome? :")
ans = isPalindrome(s) 
  
if (ans): 
    print("Yes") 
else: 
    print("No")
# recursive version given by problem
# def pal_test(string):     
#     if len(string) <= 1:         
#         return True     
#     elif string[0] != string[-1]:         
#         return False     
#     else:         
#         return pal_test(string[1:-1]) 

