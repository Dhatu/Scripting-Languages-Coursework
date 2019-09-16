 #!/usr/local/bin/python3  
from random import randrange   

n = 1 #modifed for what question asks
for n in range(4):      
    print (n)       
    r = 2   #removed random picker for whatever specific value
    print(r)      
    if n == r: continue       
    if n>r: break      
    print ("x")  #modified to make print strings (added parentheses)
else:    
    print ("Wow, you are lucky\n")
if n<2:     
    print ("Better luck next time\n") 


