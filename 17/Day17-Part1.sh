#!/bin/env bash

solutions=0

for a in 1 2; do
    if [[ $a -eq 2 ]]; then
        av=50
    else
        av=0
    fi
    for b in 1 2; do
        if [[ $b -eq 2 ]]; then
            bv=44
        else
            bv=0
        fi
        for c in 1 2; do
            if [[ $c -eq 2 ]]; then
                cv=11
            else
                cv=0
            fi
            for d in 1 2; do
                if [[ $d -eq 2 ]]; then
                    dv=49
                else
                    dv=0
                fi
                for e in 1 2; do
                    if [[ $e -eq 2 ]]; then
                        ev=42
                    else
                        ev=0
                    fi
                    for f in 1 2; do
                        if [[ $f -eq 2 ]]; then
                            fv=46
                        else
                            fv=0
                        fi
                        for g in 1 2; do
                            if [[ $g -eq 2 ]]; then
                                gv=18
                            else
                                gv=0
                            fi
                            for h in 1 2; do
                                if [[ $h -eq 2 ]]; then
                                    hv=32
                                else
                                    hv=0
                                fi
                                for i in 1 2; do
                                    if [[ $i -eq 2 ]]; then
                                        iv=26
                                    else
                                        iv=0
                                    fi
                                    for j in 1 2; do
                                        if [[ $j -eq 2 ]]; then
                                            jv=40
                                        else
                                            jv=0
                                        fi
                                        for k in 1 2; do
                                            if [[ $k -eq 2 ]]; then
                                                kv=21
                                            else
                                                kv=0
                                            fi
                                            for l in 1 2; do
                                                if [[ $l -eq 2 ]]; then
                                                    lv=7
                                                else
                                                    lv=0
                                                fi
                                                for m in 1 2; do
                                                    if [[ $m -eq 2 ]]; then
                                                        mv=18
                                                    else
                                                        mv=0
                                                    fi
                                                    for n in 1 2; do
                                                        if [[ $n -eq 2 ]]; then
                                                            nv=43
                                                        else
                                                            nv=0
                                                        fi
                                                        for o in 1 2; do
                                                            if [[ $o -eq 2 ]]; then
                                                                ov=10
                                                            else
                                                                ov=0
                                                            fi
                                                            for p in 1 2; do
                                                                if [[ $p -eq 2 ]]; then
                                                                    pv=47
                                                                else
                                                                    pv=0
                                                                fi
                                                                for q in 1 2; do
                                                                    if [[ $q -eq 2 ]]; then
                                                                        qv=36
                                                                    else
                                                                        qv=0
                                                                    fi
                                                                    for r in 1 2; do
                                                                        if [[ $r -eq 2 ]]; then
                                                                            rv=24
                                                                        else
                                                                            rv=0
                                                                        fi
                                                                        for s in 1 2; do
                                                                            if [[ $s -eq 2 ]]; then
                                                                                sv=22
                                                                            else
                                                                                sv=0
                                                                            fi
                                                                            for t in 1 2; do
                                                                                if [[ $t -eq 2 ]]; then
                                                                                    tv=40
                                                                                else
                                                                                    tv=0
                                                                                fi
                                                                                # Calculate total
                                                                                total=$((av + bv + cv + dv + ev + fv + gv + hv + iv + jv + kv + lv + mv + nv + ov + pv + qv + rv + sv + tv))
                                                                                if [[ $total -eq 150 ]]; then
                                                                                    ((solutions++))
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

# the solution is 654

echo $solutions
