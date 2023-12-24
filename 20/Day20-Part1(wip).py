results = {}

for z in range(1, 10001):
    results[z] = 0

challenge = 34000000

for x in range(1, 10001):
    for y in range(x, 10001):
        if y % x == 0:
            results[y] += 10

for z in range(1, 10001):
    if results[z] == challenge:
        print(z)
        break
