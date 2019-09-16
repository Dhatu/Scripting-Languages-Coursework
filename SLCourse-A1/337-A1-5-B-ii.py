words = {"mammal": 1, "cat": 2, "carnivore": 3, "predator": 4}
while True:
    try:
        value = words[input("Enter the type of animal that a leopard is (to see if its in the dictionary): ").lower()]
    except KeyError: 
        print("That word is not a key in the dictionary, try again")
    else:
        print("That word is a key in the dictionary")