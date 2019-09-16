testdata = ["Aardvark","Albatross","Alligator","Alpaca","Ant","Anteater","Antelope","Ape","Armadillo","Donkey","Baboon","Badger",
"Barracuda","Bat","Bear","Beaver","Bee","Bison","Boar","Buffalo","Butterfly","Camel","Capybara","Caribou","Cassowary",
"Cat","Caterpillar","Cattle","Chamois","Cheetah","Chicken",
"Chimpanzee","Chinchilla","Chough","Clam","Cobra","Cockroach","Cod","Cormorant","Coyote","Crab","Crane","Crocodile","Crow",
"Curlew","Deer","Dinosaur","Dog","Dogfish","Dolphin","Dotterel","Dove","Dragonfly","Duck","Dugong","Dunlin",
]
try:
    testnum = 0
    testnum = int(input(" Random Animal Generator (between first letters: A to D): Pick a number between 1-56\n"))
    outputanimanl = ""
    outputanimal = testdata[testnum-1]
    print (outputanimal)
except IndexError:
    print ("Your number is out of bounds")