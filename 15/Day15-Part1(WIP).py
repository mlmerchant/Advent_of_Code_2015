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
                if (a + b + c + d) != 100:
                    continue
                Sprinkles = a
                PeanutButter = b
                Frosting = c
                Sugar = d
                
                value1 = ( (Sprinkles * lookup["Sprinkles"]["capacity"]) + (PeanutButter * lookup["PeanutButter"]["capacity"]) + (Frosting * lookup["Frosting"]["capacity"])  + (Sugar * lookup["Sugar"]["capacity"]) )
                value2 = ( (Sprinkles * lookup["Sprinkles"]["durability"]) + (PeanutButter * lookup["PeanutButter"]["durability"]) + (Frosting * lookup["Frosting"]["durability"]) + (Sugar * lookup["Sugar"]["durability"]) )
                value3 = ( (Sprinkles * lookup["Sprinkles"]["flavor"]) + (PeanutButter * lookup["PeanutButter"]["flavor"]) + (Frosting * lookup["Frosting"]["flavor"]) + (Sugar * lookup["Sugar"]["flavor"])  )
                value4 = ( (Sprinkles * lookup["Sprinkles"]["texture"]) + (PeanutButter * lookup["PeanutButter"]["texture"]) + (Frosting * lookup["Frosting"]["texture"]) + (Sugar * lookup["Sugar"]["texture"]) )
                
                if value1 <= 0 or value2 <= 0 or value3 <= 0 or value4 <= 0:
                    pass
                
                total = value1 * value2 * value3 * value4
                
                if total > max:
                	max = total
                	
# 9375000 is too low.  2124702744 is wrong.  40627200 is wrong.
if max < 9375000:
    print(f"Answer {max} is too low.")
else:
    print(max)
                
	
