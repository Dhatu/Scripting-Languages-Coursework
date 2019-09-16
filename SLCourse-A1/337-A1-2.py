ciphertext = "T qcura wthl rrscmc q yyew qsxgthhh drkjh F vtoyat bw " \
             "qgvlhqnr pmdjrb, rhz ymxd B fhqxftpt R qcura poqsiw xmx scmzvhdt " \
             "uvut df vdsjhwfuhlcds hvtzmdbp godulyt dn smx scmnbzx cefjbifnji. Gh" \
             " mtp qrud vmbi lvlh 35000 khuxv sr vs smhbs jmxd, vqnm lxnfi knt rsiv " \
             "fsxgthlhf, thz usrbnnyv, M rdn's pjnw, i xfnyqb ktcth 35000 khuxv sf " \
             "dmvpyi, wihluxp, fboko, tmxkc, ezc bsymw qcnrysct. Jy e txqdwqbiw oefifhf " \
             "eyovbhd, S kie e fjhulvyb vrufrxh. --Wmxgthebtf"
translatedtxt = ""
# assumes first letter is capital and alphabetic
count = 0
aascii = 65
notcapascii = 97
while count < 26:
    if ((count + aascii + ord(ciphertext[len(ciphertext) - 1])) % 26) == (ord(ciphertext[0]) - aascii):
        o = count
    count = count + 1
complie = chr(o + aascii)
translatedtxt = translatedtxt + complie

iter = complie

for i in range(1, len(ciphertext) - 1):
    if ciphertext[i].isalpha():
        if ciphertext[i].islower():
            char = notcapascii
        else:
            char = aascii
        seccount = 0
        while seccount < 26:
            ref1 = ((seccount + char + ord(iter)) % 26)
            ref2 = (ord(ciphertext[i]) - char)
            if ref1 == ref2:
                o = seccount
            seccount = seccount + 1

        l = chr(o + char)
    
        translatedtxt = translatedtxt + l
        iter = l

    else:
        translatedtxt = translatedtxt + ciphertext[i]

print(translatedtxt)