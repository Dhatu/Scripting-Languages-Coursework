
# Original:
# lst = [1, 2, 3] 
# arr = [ lst[:] ]* 3 
# arr[1][1] = 7 
# arr 
# # what do u see?
# # arr outputs as [[1, 7, 3], [1, 7, 3], [1, 7, 3]]

#same outputs but different methods/approaches

lst = [1, 2, 3] 
arr = [lst] + [lst[:]] + [lst]
arr[1][1] = 7 
print(arr)

#line 2 has only the second list in arr to be the only true copy and the only 
#not refering the original lst that can multiple uses of the lst object (like 
#if they refer to arr[0][1] = 7 then arr[2][1] would also change.
