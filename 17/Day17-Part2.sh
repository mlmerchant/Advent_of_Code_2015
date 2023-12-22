#!/bin/env bash

min_containers=1000

for a in 0 1; do
    if [[ $a -eq 1 ]]; then
        av=50
    else
        av=0
    fi
    for b in 0 1; do
        if [[ $b -eq 1 ]]; then
            bv=44
        else
            bv=0
        fi
        for c in 0 1; do
            if [[ $c -eq 1 ]]; then
                cv=11
            else
                cv=0
            fi
            for d in 0 1; do
                if [[ $d -eq 1 ]]; then
                    dv=49
                else
                    dv=0
                fi
                for e in 0 1; do
                    if [[ $e -eq 1 ]]; then
                        ev=42
                    else
                        ev=0
                    fi
                    for f in 0 1; do
                        if [[ $f -eq 1 ]]; then
                            fv=46
                        else
                            fv=0
                        fi
                        for g in 0 1; do
                            if [[ $g -eq 1 ]]; then
                                gv=18
                            else
                                gv=0
                            fi
                            for h in 0 1; do
                                if [[ $h -eq 1 ]]; then
                                    hv=32
                                else
                                    hv=0
                                fi
                                for i in 0 1; do
                                    if [[ $i -eq 1 ]]; then
                                        iv=26
                                    else
                                        iv=0
                                    fi
                                    for j in 0 1; do
                                        if [[ $j -eq 1 ]]; then
                                            jv=40
                                        else
                                            jv=0
                                        fi
                                        for k in 0 1; do
                                            if [[ $k -eq 1 ]]; then
                                                kv=21
                                            else
                                                kv=0
                                            fi
                                            for l in 0 1; do
                                                if [[ $l -eq 1 ]]; then
                                                    lv=7
                                                else
                                                    lv=0
                                                fi
                                                for m in 0 1; do
                                                    if [[ $m -eq 1 ]]; then
                                                        mv=18
                                                    else
                                                        mv=0
                                                    fi
                                                    for n in 0 1; do
                                                        if [[ $n -eq 1 ]]; then
                                                            nv=43
                                                        else
                                                            nv=0
                                                        fi
                                                        for o in 0 1; do
                                                            if [[ $o -eq 1 ]]; then
                                                                ov=10
                                                            else
                                                                ov=0
                                                            fi
                                                            for p in 0 1; do
                                                                if [[ $p -eq 1 ]]; then
                                                                    pv=47
                                                                else
                                                                    pv=0
                                                                fi
                                                                for q in 0 1; do
                                                                    if [[ $q -eq 1 ]]; then
                                                                        qv=36
                                                                    else
                                                                        qv=0
                                                                    fi
                                                                    for r in 0 1; do
                                                                        if [[ $r -eq 1 ]]; then
                                                                            rv=24
                                                                        else
                                                                            rv=0
                                                                        fi
                                                                        for s in 0 1; do
                                                                            if [[ $s -eq 1 ]]; then
                                                                                sv=22
                                                                            else
                                                                                sv=0
                                                                            fi
                                                                            for t in 0 1; do
                                                                                if [[ $t -eq 1 ]]; then
                                                                                    tv=40
                                                                                else
                                                                                    tv=0
                                                                                fi
                                                                                # Calculate total
                                                                                total=$((av + bv + cv + dv + ev + fv + gv + hv + iv + jv + kv + lv + mv + nv + ov + pv + qv + rv + sv + tv))
                                                                                if [[ $total -eq 150 ]]; then
                                                                                    number_of_containers=$((a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t))
                                                                                    if [[ $number_of_containers -eq $min_containers ]]; then
                                                                                        ((number_of_min_containers++))
                                                                                    elif [[ $number_of_containers -lt $min_containers ]]; then
                                                                                        min_containers=$number_of_containers
                                                                                        number_of_min_containers=1
                                                                                    fi
                                                                                fi
                                                                            done
                                                                        done
                                                                    done
                                                                done
                                                            done
                                                        done
                                                    done
                                                done
                                            done
                                        done
                                    done
                                done
                            done
                        done
                    done
                done
            done
        done
    done
done

# the solution is 57.

echo $number_of_min_containers
