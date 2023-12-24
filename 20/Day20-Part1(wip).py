top = 100000000
results = [0] * top
challenge = 34000000

for x in range(1, top):
    for y in range(x, top, x):
        results[y] += 10
        if results[y] >= challenge:
            print(y)
            exit()  # Exit early if answer.
print("No Answer Found") # Otherwise
