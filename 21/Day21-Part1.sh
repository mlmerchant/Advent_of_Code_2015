function DoesWin() {
    # usage: DoesWin damage_int armor_int
    local EnemyHP=100
    local EnemyDamage=8
    local EnemyArmor=2
    local PlayerHP=100
    local PlayerDamage=$1
    local PlayerArmor=$2
    
    EnemyDamage=$((EnemyDamage - PlayerArmor))
    if [[ $EnemyDamage -le 0 ]]; then
        EnemyDamage=1
    fi
    PlayerDamage=$((PlayerDamage - EnemyArmor))
    if [[ $PlayerDamage -le 0 ]]; then
        PlayerDamage=1
    fi
    #Fight Loop
    while true; do
        EnemyHP=$((EnemyHP - PlayerDamage))
        if [[ $EnemyHP -le 0 ]]; then
            return 0
        fi 
        PlayerHP=$((PlayerHP - EnemyDamage))
        if [[ $PlayerHP -le 0 ]]; then
            return 1
        fi 
    done 
}

PlayerDamage=0
PlayerArmor=0
PlayerCost=0

#Weapons = Cost Damage Armor
declare -a Weapons
Weapons[0]='8 4 0'
Weapons[1]='10 5 0'
Weapons[2]='25 6 0'
Weapons[3]='40 7 0'
Weapons[4]='74 8 0'

#Armor = Cost  Damage  Armor
declare -a Armors
Armors[0]='13 0 1'
Armors[1]='31 0 2'
Armors[2]='53 0 3'
Armors[3]='75 0 4'
Armors[4]='102 0 5'

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

min_gold=10000000

for weapon in "${Weapons[@]}"; do
    for armor in "${Armors[@]}"; do
        for ring1 in "${Ring1[@]}"; do
            for ring2 in "${Ring2[@]}"; do
                if [[ $(echo $ring1 | cut -d ' ' -f 4) -eq $(echo $ring2 | cut -d ' ' -f 4) ]]; then
                    continue # Can't wear 2 of the same rings.
                fi
                armor_armor_bonus=$(echo $armor | cut -d ' ' -f 3)
                ring1_armor_bonus=$(echo $ring1 | cut -d ' ' -f 3)
                ring2_armor_bonus=$(echo $ring2 | cut -d ' ' -f 3)
                PlayerArmor=$((armor_armor_bonus + ring1_armor_bonus + ring2_armor_bonus))
                weapon_weapon_bonus=$(echo $weapon | cut -d ' ' -f 2)
                ring1_weapon_bonus=$(echo $ring1 | cut -d ' ' -f 2)
                ring2_weapon_bonus=$(echo $ring2 | cut -d ' ' -f 2)
                PlayerDamage=$((weapon_weapon_bonus + ring1_weapon_bonus + ring2_weapon_bonus))
                weapon_cost=$(echo $weapon | cut -d ' ' -f 1)
                armor_cost=$(echo $armor | cut -d ' ' -f 1)
                ring1_cost=$(echo $ring1 | cut -d ' ' -f 1)
                ring2_cost=$(echo $ring2 | cut -d ' ' -f 1)
                PlayerCost=$((weapon_cost + armor_cost + ring1_cost + ring2_cost))
                if  (DoesWin $PlayerDamage $PlayerArmor); then
                    if [[ $PlayerCost -lt $min_gold ]]; then
                        min_gold=$PlayerCost
                    fi 
                fi
            done
        done
    done 
done

# 91 is the answer
echo $min_gold
