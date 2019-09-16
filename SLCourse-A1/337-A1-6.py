filename = input("Please enter filename: ")
outputarray = {}
f = open(filename)
fileStr = f.read()
fileStr.rstrip()
parsedfile = fileStr.split("\n\n")
for y in parsedfile:
    initlist = y.split("\n")
    indept = len(initlist[0].split("/"))
    iterate = len(initlist[2:])
    if not indept in outputarray:
        outputarray[indept] = iterate
    else:        
        outputarray[indept] = outputarray[indept] + iterate
f.close()
print(outputarray)