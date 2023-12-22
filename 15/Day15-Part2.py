# Ingredient properties
lookup = {
    "Sprinkles": {"capacity": 5, "durability": -1, "flavor": 0, "texture": 0, "calories": 5},
    "PeanutButter": {"capacity": -1, "durability": 3, "flavor": 0, "texture": 0, "calories": 1},
    "Frosting": {"capacity": 0, "durability": -1, "flavor": 4, "texture": 0, "calories": 6},
    "Sugar": {"capacity": -1, "durability": 0, "flavor": 0, "texture": 2, "calories": 8}
}

# Initialize maximum score
max_score = 0

# Iterate through all possible combinations, ensuring the total quantity is 100
for a in range(101):  # Sprinkles
    for b in range(101 - a):  # PeanutButter
        for c in range(101 - a - b):  # Frosting
            d = 100 - a - b - c  # Sugar
            
            # Only accept 500 calories
            net_calories = (a * lookup["Sprinkles"]["calories"]) +  (b * lookup["PeanutButter"]["calories"]) + (c * lookup["Frosting"]["calories"]) + (d * lookup["Sugar"]["calories"])
            if not net_calories == 500:
                continue

            # Calculate total for each property, handling negative values
            value1 = max(0, a * lookup["Sprinkles"]["capacity"] + b * lookup["PeanutButter"]["capacity"] + c * lookup["Frosting"]["capacity"] + d * lookup["Sugar"]["capacity"])
            value2 = max(0, a * lookup["Sprinkles"]["durability"] + b * lookup["PeanutButter"]["durability"] + c * lookup["Frosting"]["durability"] + d * lookup["Sugar"]["durability"])
            value3 = max(0, a * lookup["Sprinkles"]["flavor"] + b * lookup["PeanutButter"]["flavor"] + c * lookup["Frosting"]["flavor"] + d * lookup["Sugar"]["flavor"])
            value4 = max(0, a * lookup["Sprinkles"]["texture"] + b * lookup["PeanutButter"]["texture"] + c * lookup["Frosting"]["texture"] + d * lookup["Sugar"]["texture"])

            # Calculate total score
            total_score = value1 * value2 * value3 * value4

            # Update maximum score if current score is greater
            if total_score > max_score:
                max_score = total_score

# Print the maximum score
# The answer is 11171160
print(max_score)