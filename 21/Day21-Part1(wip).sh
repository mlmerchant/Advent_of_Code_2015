declare -A  Player
declare -A Enemy

Enemy['HP']=100
Enemy['Damage']=8
Enemy['Armor']=2
Player['HP']=100
Player['Damage']=0
Player['Armor']=0

#Weapons = Cost Damage Armor
declare -a Weapons
Weapons[0]='8 4 0'
Weapons[1]='10 5 0'
Weapons[2]='25 6 0'
Weapons[3]='40 7 0'
Weapons[1]='74 8 0'

#Armor = Cost  Damage  Armor
Armor[0]='13 0 1'
Armor[1]='31 0 2'
Armor[2]='53 0 3'
Armor[3]='75 0 4'
Armor[4]='102 0 5'

# Rings = Cost  Damage  Armor
Rings[0]='25 1 0'
Rings[0]='50 2 0'
Rings[0]='100 3 0'
Rings[0]='20 0 1'
Rings[0]='40 0 2'
Rings[0]='80 0 3'
