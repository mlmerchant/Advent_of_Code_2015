with open("challenge.txt") as file:
    presents = []
    line = file.readline()
    while line:
        presents.append(line.strip().split("x"))
        line = file.readline()

total = 0

for present in presents:
	present = [int(side) for side in present]
	total += min(present) # slack
	for side in present:
		total += side * 2