#!/bin/bash

LOG=cromai.log
while true; do
    if [ -e "pid.txt" ]; then
        while read -r line || [[ -n "$line" ]]; do
            if ps "$line" | grep "python3"; then
                echo "`date` 1: It is alive" >> $LOG
            else
                echo "`date` 1: It is dead" >> $LOG
                python3 desafio-02.py
            fi
        done < pid.txt
        sleep 1s
    else
        echo "`date` 1: File pid.txt not found" >> $LOG
        echo "`date` 1: executing desafio-02.py" >> $LOG
        python3 desafio-02.py
    fi
done