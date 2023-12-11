with open("challenge.txt") as file:
    presents = []
    line = file.readline()
    while line:
        presents.append(line.strip().split("x"))
        line = file.readline()

total = 0

for present in presents:

    present = [int(side) for side in present]

    length = present[0]
    width = present[1]
    height = present[2]

    # 2*l*w + 2*w*h + 2*h*l
    side1 = 2 * length * width
    side2 = 2 * width * height
    side3 = 2 * height * length

    total += min([side1, side2, side3]) / 2
    total += sum([side1, side2, side3])

# The correct answer is 1586300
print(int(total))
