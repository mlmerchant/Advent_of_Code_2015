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
declare -a Armor
Armor[0]='13 0 1'
Armor[1]='31 0 2'
Armor[2]='53 0 3'
Armor[3]='75 0 4'
Armor[4]='102 0 5'

# Rings = Cost  Damage  Armor
declare -a Ring1
Ring1[0]='25 1 0 0'
Ring1[1]='50 2 0 1'
Ring1[2]='100 3 0 2'
Ring1[3]='20 0 1 3'
Ring1[4]='40 0 2 4'
Ring1[5]='80 0 3 5'
Ring1[6]='0 0 0 6'
Ring1[7]='0 0 0 7'
declare -a Ring2
Ring2[0]='25 1 0 0'
Ring2[1]='50 2 0 1'
Ring2[2]='100 3 0 2'
Ring2[3]='20 0 1 3'
Ring2[4]='40 0 2 4'
Ring2[5]='80 0 3 5'
Ring2[6]='0 0 0 6'
Ring2[7]='0 0 0 7'

for weapon in "${weapons[@]}"; do
    #for
        #for
           #for etc 
done
