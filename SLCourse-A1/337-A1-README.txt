Sudhin Domala
110475495
Windows 10 Shell

This is the answers text about the remaining word questions of the Assignment pdf.

1-B-pt1:
    The use of accumulator changes the recursive algorithm via: 

    the concept of a tail-call where the computer just has to only work on another
    function call and can forget all of the variables/states used on the current iteration.
    The existence of the accumulator does enable this reset to ultimately differ from the use 
    of previously-iternated variables.

1-B-pt2:
    computation range of the numbers possible for input extends from the recursive call that was provided/changed
    However after 1000, maximum recursion depth exceeded in comparsion (Recursion Error) is displayed.

3-A:

    lst = [1,2,3]
    >>> lst * 3
    [1, 2, 3, 1, 2, 3, 1, 2, 3]

    this line computes lst to be on list on a repeat of the 3 elements 3 times
    >>> [lst] * 3
    [[1, 2, 3], [1, 2, 3], [1, 2, 3]]

    this line computers lst to be a list of 3 lists that are duplicates of the original lst
    Second list: 
        list was defined as [1,2,3]
        arr was defined as a list with 3 lists.
        lst[1] => computes the second place (1) to change 7
        this changes base reference of lst that changes arr as well.

    Third List:
        list was defined as [1,2,3]
        arr has a true copy of lst and multipled to have 3 instances in its list
        arr[1] refers to lists (first row) and [1] refers to second element on list [1] = 2 and change 2 to 7
        base lst is unchanged unlike second list computation

3-B:
    Take the third expression in (a), and subsequently change the value lst; 
    see the middle column above, what happens to the result? Explain the behavior. 
    How about changing line 3 to arr[1][1] = 7?

    -value 1st changing will result in the fourth expression of arr to be different
    due to base reference being the same regards of it being a third expression
    after arr initization.
    -Changing line 3 to arr[1][1] = 7 doesn't make the final output of arr to be
    different from lst[1] = 7 due to all of it referring to the same base array 
    to make the contents lst and thus arr.

3-C:
     What if you tried to avoid the problem above using the slice copy, see the right side column above? 
     What happens if you change an element in the array? Explain the result. 

     slice copy is explained in the explanation of the third column above
     If I were to change an element in the array then lst is unchanged. 
4:
    Following are the lines to be executed were the 
    n and r were such specific values 

    a) if n = 0 and r = 0. 
    0
    0
    1
    0
    Better luck next time  

    b) if n = 1 and r = 2. 
    0
    2
    x
    1
    2
    x
    2
    2
    3
    2

    c) if n = 2 and r = 0. 
    0
    0
    1
    0
    Better luck next time

    d) if n = 3 and r = 3. 
    0
    3
    x
    1
    3
    x
    2
    3
    x
    3
    3
    Wow, you are lucky
5-A:
    A)
        i) I chose the zerodivisionerror to produce a valid string to notify the user of the caught error that was thrown. 
        I found out by looking at the exceptions code documentation
        ii) I chose the KeyError to produce a valid string to notify the user of the caught error that was thrown. 
        I seen that it was a documented exception handling term that satisfied that I was looking for and tested it to be true
        with non-key terms.
        code documentation and seen in python -1 input results in displaying the last element of a non-empty list. 
        iii)I chose the IndexError to produce a valid string to notify the user of the caught error that was thrown. 
        I seen that if it was out of bounds or more negative from -1 then it will I found out by looking at the exceptions 
        code documentation and seen in python -1 input results in displaying the last element of a non-empty list. 
7-C:
    What does the following Python expression do? Using annotations, demonstrate your complete understanding of the expression; 
    explain what each part of the expression does.  
    
    [i for i in range(2,n) if len([x for x in range(2,i) if i%x==0]) == 0] 

    i is iternated over the range function from 2 (given start integer) to defined n (defined stop integer)

    new list only gets the i iternation change through if "if statement that processes the length of the following expression" yields true
        x is iternated in a for loop from the range of 2 (given start integer) to defined i (defined stop integer)
            nested if statement of if i is an even or odd number ( if even (= 0) then print out and odd (!= 0) then not print out)
    length of the list that is outputed from the nested for loop is then seen if it is equal to 0 and goes back to the i for loop update
    outer for loop runs until the defined stop integer (n) is reached
