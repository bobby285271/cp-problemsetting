#!/usr/bin/env bash
for INFILE in "2-10" "11" "12"
do
    echo "${INFILE}"
    g++ "${INFILE}.cpp" && ./a.out
done