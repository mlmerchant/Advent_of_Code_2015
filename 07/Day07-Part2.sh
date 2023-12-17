#!/bin/bash
# https://adventofcode.com/2015/day/7

INPUT_FILE="challenge.txt"

cat << EOF > test.txt
123 -> x
456 -> y
x AND y -> d
x OR y -> e
x LSHIFT 2 -> f
y RSHIFT 2 -> g
NOT x -> h
NOT y -> i
EOF

# After it is run, these are the signals on the wires:
# d: 72
# e: 507
# f: 492
# g: 114
# h: 65412
# i: 65079
# x: 123
# y: 456


cat << EOF > challenge.txt
lf AND lq -> ls
iu RSHIFT 1 -> jn
bo OR bu -> bv
gj RSHIFT 1 -> hc
et RSHIFT 2 -> eu
bv AND bx -> by
is OR it -> iu
b OR n -> o
gf OR ge -> gg
NOT kt -> ku
ea AND eb -> ed
kl OR kr -> ks
hi AND hk -> hl
au AND av -> ax
lf RSHIFT 2 -> lg
dd RSHIFT 3 -> df
eu AND fa -> fc
df AND dg -> di
ip LSHIFT 15 -> it
NOT el -> em
et OR fe -> ff
fj LSHIFT 15 -> fn
t OR s -> u
ly OR lz -> ma
ko AND kq -> kr
NOT fx -> fy
et RSHIFT 1 -> fm
eu OR fa -> fb
dd RSHIFT 2 -> de
NOT go -> gp
kb AND kd -> ke
hg OR hh -> hi
jm LSHIFT 1 -> kg
NOT cn -> co
jp RSHIFT 2 -> jq
jp RSHIFT 5 -> js
1 AND io -> ip
eo LSHIFT 15 -> es
1 AND jj -> jk
g AND i -> j
ci RSHIFT 3 -> ck
gn AND gp -> gq
fs AND fu -> fv
lj AND ll -> lm
jk LSHIFT 15 -> jo
iu RSHIFT 3 -> iw
NOT ii -> ij
1 AND cc -> cd
bn RSHIFT 3 -> bp
NOT gw -> gx
NOT ft -> fu
jn OR jo -> jp
iv OR jb -> jc
hv OR hu -> hw
16076 -> b
gj RSHIFT 5 -> gm
hq AND hs -> ht
dy RSHIFT 1 -> er
ao OR an -> ap
ld OR le -> lf
bk LSHIFT 1 -> ce
bz AND cb -> cc
bi LSHIFT 15 -> bm
il AND in -> io
af AND ah -> ai
as RSHIFT 1 -> bl
lf RSHIFT 3 -> lh
er OR es -> et
NOT ax -> ay
ci RSHIFT 1 -> db
et AND fe -> fg
lg OR lm -> ln
k AND m -> n
hz RSHIFT 2 -> ia
kh LSHIFT 1 -> lb
NOT ey -> ez
NOT di -> dj
dz OR ef -> eg
lx -> a
NOT iz -> ja
gz LSHIFT 15 -> hd
ce OR cd -> cf
fq AND fr -> ft
at AND az -> bb
ha OR gz -> hb
fp AND fv -> fx
NOT gb -> gc
ia AND ig -> ii
gl OR gm -> gn
0 -> c
NOT ca -> cb
bn RSHIFT 1 -> cg
c LSHIFT 1 -> t
iw OR ix -> iy
kg OR kf -> kh
dy OR ej -> ek
km AND kn -> kp
NOT fc -> fd
hz RSHIFT 3 -> ib
NOT dq -> dr
NOT fg -> fh
dy RSHIFT 2 -> dz
kk RSHIFT 2 -> kl
1 AND fi -> fj
NOT hr -> hs
jp RSHIFT 1 -> ki
bl OR bm -> bn
1 AND gy -> gz
gr AND gt -> gu
db OR dc -> dd
de OR dk -> dl
as RSHIFT 5 -> av
lf RSHIFT 5 -> li
hm AND ho -> hp
cg OR ch -> ci
gj AND gu -> gw
ge LSHIFT 15 -> gi
e OR f -> g
fp OR fv -> fw
fb AND fd -> fe
cd LSHIFT 15 -> ch
b RSHIFT 1 -> v
at OR az -> ba
bn RSHIFT 2 -> bo
lh AND li -> lk
dl AND dn -> do
eg AND ei -> ej
ex AND ez -> fa
NOT kp -> kq
NOT lk -> ll
x AND ai -> ak
jp OR ka -> kb
NOT jd -> je
iy AND ja -> jb
jp RSHIFT 3 -> jr
fo OR fz -> ga
df OR dg -> dh
gj RSHIFT 2 -> gk
gj OR gu -> gv
NOT jh -> ji
ap LSHIFT 1 -> bj
NOT ls -> lt
ir LSHIFT 1 -> jl
bn AND by -> ca
lv LSHIFT 15 -> lz
ba AND bc -> bd
cy LSHIFT 15 -> dc
ln AND lp -> lq
x RSHIFT 1 -> aq
gk OR gq -> gr
NOT kx -> ky
jg AND ji -> jj
bn OR by -> bz
fl LSHIFT 1 -> gf
bp OR bq -> br
he OR hp -> hq
et RSHIFT 5 -> ew
iu RSHIFT 2 -> iv
gl AND gm -> go
x OR ai -> aj
hc OR hd -> he
lg AND lm -> lo
lh OR li -> lj
da LSHIFT 1 -> du
fo RSHIFT 2 -> fp
gk AND gq -> gs
bj OR bi -> bk
lf OR lq -> lr
cj AND cp -> cr
hu LSHIFT 15 -> hy
1 AND bh -> bi
fo RSHIFT 3 -> fq
NOT lo -> lp
hw LSHIFT 1 -> iq
dd RSHIFT 1 -> dw
dt LSHIFT 15 -> dx
dy AND ej -> el
an LSHIFT 15 -> ar
aq OR ar -> as
1 AND r -> s
fw AND fy -> fz
NOT im -> in
et RSHIFT 3 -> ev
1 AND ds -> dt
ec AND ee -> ef
NOT ak -> al
jl OR jk -> jm
1 AND en -> eo
lb OR la -> lc
iu AND jf -> jh
iu RSHIFT 5 -> ix
bo AND bu -> bw
cz OR cy -> da
iv AND jb -> jd
iw AND ix -> iz
lf RSHIFT 1 -> ly
iu OR jf -> jg
NOT dm -> dn
lw OR lv -> lx
gg LSHIFT 1 -> ha
lr AND lt -> lu
fm OR fn -> fo
he RSHIFT 3 -> hg
aj AND al -> am
1 AND kz -> la
dy RSHIFT 5 -> eb
jc AND je -> jf
cm AND co -> cp
gv AND gx -> gy
ev OR ew -> ex
jp AND ka -> kc
fk OR fj -> fl
dy RSHIFT 3 -> ea
NOT bs -> bt
NOT ag -> ah
dz AND ef -> eh
cf LSHIFT 1 -> cz
NOT cv -> cw
1 AND cx -> cy
de AND dk -> dm
ck AND cl -> cn
x RSHIFT 5 -> aa
dv LSHIFT 1 -> ep
he RSHIFT 2 -> hf
NOT bw -> bx
ck OR cl -> cm
bp AND bq -> bs
as OR bd -> be
he AND hp -> hr
ev AND ew -> ey
1 AND lu -> lv
kk RSHIFT 3 -> km
b AND n -> p
NOT kc -> kd
lc LSHIFT 1 -> lw
km OR kn -> ko
id AND if -> ig
ih AND ij -> ik
jr AND js -> ju
ci RSHIFT 5 -> cl
hz RSHIFT 1 -> is
1 AND ke -> kf
NOT gs -> gt
aw AND ay -> az
x RSHIFT 2 -> y
ab AND ad -> ae
ff AND fh -> fi
ci AND ct -> cv
eq LSHIFT 1 -> fk
gj RSHIFT 3 -> gl
u LSHIFT 1 -> ao
NOT bb -> bc
NOT hj -> hk
kw AND ky -> kz
as AND bd -> bf
dw OR dx -> dy
br AND bt -> bu
kk AND kv -> kx
ep OR eo -> eq
he RSHIFT 1 -> hx
ki OR kj -> kk
NOT ju -> jv
ek AND em -> en
kk RSHIFT 5 -> kn
NOT eh -> ei
hx OR hy -> hz
ea OR eb -> ec
s LSHIFT 15 -> w
fo RSHIFT 1 -> gh
kk OR kv -> kw
bn RSHIFT 5 -> bq
NOT ed -> ee
1 AND ht -> hu
cu AND cw -> cx
b RSHIFT 5 -> f
kl AND kr -> kt
iq OR ip -> ir
ci RSHIFT 2 -> cj
cj OR cp -> cq
o AND q -> r
dd RSHIFT 5 -> dg
b RSHIFT 2 -> d
ks AND ku -> kv
b RSHIFT 3 -> e
d OR j -> k
NOT p -> q
NOT cr -> cs
du OR dt -> dv
kf LSHIFT 15 -> kj
NOT ac -> ad
fo RSHIFT 5 -> fr
hz OR ik -> il
jx AND jz -> ka
gh OR gi -> gj
kk RSHIFT 1 -> ld
hz RSHIFT 5 -> ic
as RSHIFT 2 -> at
NOT jy -> jz
1 AND am -> an
ci OR ct -> cu
hg AND hh -> hj
jq OR jw -> jx
v OR w -> x
la LSHIFT 15 -> le
dh AND dj -> dk
dp AND dr -> ds
jq AND jw -> jy
au OR av -> aw
NOT bf -> bg
z OR aa -> ab
ga AND gc -> gd
hz AND ik -> im
jt AND jv -> jw
z AND aa -> ac
jr OR js -> jt
hb LSHIFT 1 -> hv
hf OR hl -> hm
ib OR ic -> id
fq OR fr -> fs
cq AND cs -> ct
ia OR ig -> ih
dd OR do -> dp
d AND j -> l
ib AND ic -> ie
as RSHIFT 3 -> au
be AND bg -> bh
dd AND do -> dq
NOT l -> m
1 AND gd -> ge
y AND ae -> ag
fo AND fz -> gb
NOT ie -> if
e AND f -> h
x RSHIFT 3 -> z
y OR ae -> af
hf AND hl -> hn
NOT h -> i
NOT hn -> ho
he RSHIFT 5 -> hh
EOF



function RShiftGate() {
    echo RShift >&2
    local dec=$2
    local times=$1
    local length=${#dec}
    
    local result=""
    for ((x=0; x < times; x++)); do
        result=${result}0    
    done

    local i
    for ((i=0 ; i < length - times; i++)); do
            result=${result}${dec:$i:1} 
    done

    echo "$result"
}


function LShiftGate() {
    echo LShift >&2
    local dec=$2
    local times=$1
    local length=${#dec}
    local result=""
    local i
    
    for ((i=times ; i < length; i++)); do
        result=${result}${dec:$i:1} 
    done   


    local x
    local append=""
    for ((x=0; x < times; x++)); do
        append=${append}0    
    done
  
    echo "${result}${append}"
}


function Dec2Bin() {
    echo Dec2Bin >&2
    local num=$1
    local bin=""

    while [ "$num" -gt 0 ]; do
        bin=$(( $num % 2 ))$bin # Get the remainder and prepend to the binary string
        num=$(( $num / 2 ))
    done

    printf "%016d\n" $bin # Pad with zeros to make it 16 bits
}


function NotGate() {
    echo Not &>2
    local binary=$1
    local result=""
    local var

    # Ensure binary string is 16 bits
    binary=$(printf "%016s" "$binary" | sed 's/ /0/g')

    for (( i=0; i<${#binary}; i++ )); do
        var=${binary:$i:1}
        if [[ $var == "0" ]]; then
            result="${result}1"
        elif [[ $var == "1" ]]; then
            result="${result}0"
        else
            # This should not happen if the input is properly formatted
            echo "Bad Input!"
            exit 11
        fi
    done

    echo $result
}


function Bin2Dec() {
    echo Bin2Dec >&2
    local dec=$1
    local num
    local i=${#dec}
    local currentPower=1  #  1, 2, 4, 8, 16 etc
    local currentNumber
    local result=0
    
    for ((i-- ; i > -1; i--)); do  #  Starting at far right, value of 1
        currentNumber=${dec:$i:1}
        result=$(( (currentPower * currentNumber) + result ))
        currentPower=$(( currentPower * 2 ))    
    done
    echo $result
}


function AndGate() {
    echo And >&2
    local dec1=$1
    local dec2=$2
    local length=${#dec1}
    local result=""
    local i
    for ((i=0 ; i < length; i++)); do
        if [[ ${dec1:$i:1} -eq 1 ]] &&  [[ ${dec2:$i:1} -eq 1 ]]; then
            result=${result}1
        else
            result=${result}0
        fi 
    done   
    echo $result
}


function OrGate() {
    echo Or >&2
    local dec1=$1
    local dec2=$2
    local length=${#dec1}
    local result=""
    local i
    for ((i=0 ; i < length; i++)); do
        if [[ ${dec1:$i:1} -eq 1 || ${dec2:$i:1} -eq 1 ]]; then
            result=${result}1
        else
            result=${result}0
        fi 
    done   
    echo $result
}


# Store of solved values
declare -A lookup

mapfile -t Array < $INPUT_FILE 

while true; do
    echo "Array Length is ${#Array[@]}"
    sleep 1
    for ((i=0; i < ${#Array[@]}; i++)); do
        var=${Array[i]}
        echo Processing $var
        # ----Completed----
        #  x AND y -> d
        if (echo "$var" | grep "AN" > /dev/null); then        
            first=$(echo "$var" | cut -d ' ' -f 1)
            second=$(echo "$var" | cut -d ' ' -f 3)
            store=$(echo  "$var" | cut -d ' ' -f 5)
            if [[ -n ${lookup[$store]} ]]; then
                continue
            fi

            num1=""
            num2=""
            # Try to find the numbers
            if (echo "$first" | grep -E '[0-9]+' > /dev/null); then
                num1=$(Dec2Bin "$first")
            elif [[ -n ${lookup[$first]} ]]; then
                num1="${lookup[$first]}"
            fi
            # Try to find the numbers
            if (echo "$second" | grep -E '[0-9]+' > /dev/null); then
                num2=$(Dec2Bin "$second")
            elif [[ -n ${lookup[$second]} ]]; then
                num2="${lookup[$second]}"
            fi

            #if we have both numbers, we can proceed
            if [[ -n $num1 ]] && [[ -n $num2 ]]; then
                lookup[$store]=$(AndGate "$num1" "$num2")
                Array=( "${Array[@]:0:i}" "${Array[@]:i+1}" )
                ((i--))
            fi
            
        # ----Completed----
        #  x OR y -> e
        elif (echo "$var" | grep "OR" > /dev/null); then
            first=$(echo "$var" | cut -d ' ' -f 1)
            second=$(echo "$var" | cut -d ' ' -f 3)
            store=$(echo  "$var" | cut -d ' ' -f 5)
            if [[ -n ${lookup[$store]} ]]; then
                continue
            fi
            
            num1=""
            num2=""
            # Try to find the numbers
            if (echo "$first" | grep -E '[0-9]+' > /dev/null); then
                num1=$(Dec2Bin "$first")
            elif [[ -n ${lookup[$first]} ]]; then
                num1="${lookup[$first]}"
            fi
            # Try to find the numbers
            if (echo "$second" | grep -E '[0-9]+' > /dev/null); then
                num2=$(Dec2Bin "$second")
            elif [[ -n ${lookup[$second]} ]]; then
                num2="${lookup[$second]}"
            fi

            #if we have both numbers, we can proceed
            if [[ -n $num1 ]] && [[ -n $num2 ]]; then
                lookup[$store]=$(OrGate "$num1" "$num2")
                Array=( "${Array[@]:0:i}" "${Array[@]:i+1}" )
                ((i--))
            fi
  

        # ----Completed----
        elif (echo "$var" | grep "LS" > /dev/null); then
            first=$(echo "$var" | cut -d ' ' -f 1)
            second=$(echo "$var" | cut -d ' ' -f 3)
            store=$(echo  "$var" | cut -d ' ' -f 5)
            if [[ -n ${lookup[$store]} ]]; then
                continue
            fi
            # Check if value is a number
            if (echo "$first" | grep -E '[0-9]+' > /dev/null); then
                lookup[$store]=$(LShiftGate "$second" $(Dec2Bin "$first"))
                Array=( "${Array[@]:0:i}" "${Array[@]:i+1}" )
                ((i--))
            # maybe value is in lookup?
            elif [[ -n ${lookup[$first]} ]]; then
                lookup[$store]=$(LShiftGate "$second" "${lookup[$first]}")
                Array=( "${Array[@]:0:i}" "${Array[@]:i+1}" )
                ((i--))
            fi
        
        
        # ----Completed----
        elif (echo "$var" | grep "RS" > /dev/null); then
            first=$(echo "$var" | cut -d ' ' -f 1)
            second=$(echo "$var" | cut -d ' ' -f 3)
            store=$(echo  "$var" | cut -d ' ' -f 5)
            if [[ -n ${lookup[$store]} ]]; then
                continue
            fi
            # Check if value is a number
            if (echo "$first" | grep -E '[0-9]+' > /dev/null); then
                lookup[$store]=$( RShiftGate "$second" $(Dec2Bin "$first"))
                Array=( "${Array[@]:0:i}" "${Array[@]:i+1}" )
                ((i--))
            # maybe value is in lookup?
            elif [[ -n ${lookup[$first]} ]]; then
                lookup[$store]=$(RShiftGate "$second" "${lookup[$first]}")
                Array=( "${Array[@]:0:i}" "${Array[@]:i+1}" )
                ((i--))
            fi
            
        
        elif (echo "$var" | grep "NO" > /dev/null); then
            # ----Completed----
            value=$(echo "$var" | cut -d ' ' -f 2)
            store=$(echo  "$var" | cut -d ' ' -f 4)
            if [[ -n ${lookup[$store]} ]]; then
                continue
            fi
            
            # Check if value is a number
            if (echo "$value" | grep -E '[0-9]+' > /dev/null); then
                lookup[$store]=$(NotGate $(Dec2Bin "$value"))
                Array=( "${Array[@]:0:i}" "${Array[@]:i+1}" )
                ((i--))
            # maybe value is in lookup?
            elif [[ -n ${lookup[$value]} ]]; then
                lookup[$store]=$(NotGate "${lookup[$value]}")
                Array=( "${Array[@]:0:i}" "${Array[@]:i+1}" )
                ((i--))
            fi
            
        else
            # ----Completed----
            value=$(echo "$var" | cut -d ' ' -f 1)
            store=$(echo  "$var" | cut -d ' ' -f 3)
            if [[ -n ${lookup[$store]} ]]; then
                continue
            fi

            # Check if value is a number
            if (echo "$value" | grep -E '[0-9]+' > /dev/null); then
                lookup[$store]=$(Dec2Bin "$value")
                Array=( "${Array[@]:0:i}" "${Array[@]:i+1}" )
                ((i--))
            # maybe value is in lookup?
            elif [[ -n ${lookup[$value]} ]]; then
                lookup[$store]=${lookup[$value]}
                Array=( "${Array[@]:0:i}" "${Array[@]:i+1}" )
                ((i--))
            fi
        fi
    done
    if [[ ${#Array[@]} -eq 0 ]]; then
        break 
    fi
done

# echo "d: 72 $(Bin2Dec ${lookup["d"]})"
# echo "e: 507 $(Bin2Dec ${lookup["e"]})"
# echo "f: 492 $(Bin2Dec ${lookup["f"]})"
# echo "g: 114 $(Bin2Dec ${lookup["g"]})"
# echo "h: 65412 $(Bin2Dec ${lookup["h"]})"
# echo "i: 65079 $(Bin2Dec ${lookup["i"]})"
# echo "x: 123 $(Bin2Dec ${lookup["x"]})"
# echo "y: 456 $(Bin2Dec ${lookup["y"]})"

echo "a: 2797 $(Bin2Dec ${lookup["a"]})"
