#!/bin/env python3

challenge = """Sprinkles capacity 5 durability -1 flavor 0 texture 0 calories 5
PeanutButter capacity -1 durability 3 flavor 0 texture 0 calories 1
Frosting capacity 0 durability -1 flavor 4 texture 0 calories 6
Sugar capacity -1 durability 0 flavor 0 texture 2 calories 8"""



challenge = challenge.split("\n")

# create the lookup tables
lookup = {}
for line in challenge:
	contents = line. split(" ")
	lookup[contents[0]] = {}
	lookup[contents[0]][contents[1]] = int(contents[2]) # capacity
	lookup[contents[0]][contents[3]] = int(contents[4]) # durability 
	lookup[contents[0]][contents[5]] = int(contents[6]) # flavor
	lookup[contents[0]][contents[7]] = int(contents[8]) # texture

max = 0
for a in range(1, 98): # Sprinkles
    for b in range(1, 98): # PeanutButter
        for c in range(1, 98): # Frosting
            for d in range(1, 98): # Sugar
                Sprinkles = a
                PeanutButter = b
                Frosting = c
                Sugar = d
                
                value1 = ( Sprinkles * (lookup["Sprinkles"]["capacity"]   +     lookup["Sprinkles"]["durability"] +       lookup["Sprinkles"]["flavor"]  + lookup["Sprinkles"]["texture"]   ) )
                value2 = ( PeanutButter * (lookup["PeanutButter"]["capacity"]   +     lookup["PeanutButter"]["durability"] +       lookup["PeanutButter"]["flavor"]  + lookup["PeanutButter"]["texture"]   ) )
                value3 = ( Frosting * (lookup["Frosting"]["capacity"]   +     lookup["Frosting"]["durability"] +       lookup["Frosting"]["flavor"]  + lookup["Frosting"]["texture"]   ) )
                value4 = ( Sugar * (lookup["Sugar"]["capacity"]   +     lookup["Sugar"]["durability"] +       lookup["Sugar"]["flavor"]  + lookup["Sugar"]["texture"]   ) )
                
                total = value1 * value2 * value3 * value4
                
                if total > max:
                	max = total

# The answer 2124702744 is too high.  2328 is too low.
print(total)
