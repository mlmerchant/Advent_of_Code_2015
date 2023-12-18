#!/usr/bin/env python

challenge = """Faerun to Tristram = 65
Faerun to Tambi = 129
Faerun to Norrath = 144
Faerun to Snowdin = 71
Faerun to Straylight = 137
Faerun to AlphaCentauri = 3
Faerun to Arbre = 149
Tristram to Tambi = 63
Tristram to Norrath = 4
Tristram to Snowdin = 105
Tristram to Straylight = 125
Tristram to AlphaCentauri = 55
Tristram to Arbre = 14
Tambi to Norrath = 68
Tambi to Snowdin = 52
Tambi to Straylight = 65
Tambi to AlphaCentauri = 22
Tambi to Arbre = 143
Norrath to Snowdin = 8
Norrath to Straylight = 23
Norrath to AlphaCentauri = 136
Norrath to Arbre = 115
Snowdin to Straylight = 101
Snowdin to AlphaCentauri = 84
Snowdin to Arbre = 96
Straylight to AlphaCentauri = 107
Straylight to Arbre = 14
AlphaCentauri to Arbre = 46"""

challenge = challenge.split("\n")

# Gather the Cities
cities = {}
for line in challenge:
	line = line. split(" ")
	cities[line[0]] = 0
	cities[line[2]] = 0
cities = cities.keys()

# Create iter for the permutations
import itertools
perms = itertools.permutations(cities)

# Create lookup table for the distances.
distance = {}
for line in challenge:
	line = line. split(" ")
	# store using sorted tuple
	distance[tuple(sorted([line[0], line[2]]))] = line[4]

shortest = 1000000000000 # first

for option in perms:
	this_trips_distance = 0
	for i in range(len(option)):
		if i == 0:
			continue
		else:
			prior = int,(option[i -1])
			current = int(option[i ])
		this_trips_distance += distance[tuple(sorted([prior, current]))]
	if this_trips_distance < shortest:
		shortest = this_trips_distance
	
print(shortest)
	
 