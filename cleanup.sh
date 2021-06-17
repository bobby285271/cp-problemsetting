#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "${DIR}"

echo "-------------------"

## Deletes all `a.out`

find "${DIR}" -name "a.out"
echo "Will delete in 3 seconds"
sleep 3
find "${DIR}" -name "a.out" -exec rm -rf "{}" \;

echo "-------------------"

## Deletes all output statements

find "${DIR}" -name "*.gen.md"
echo "Will delete in 3 seconds"
sleep 3
find "${DIR}" -name "*.gen.md" -exec rm -rf "{}" \;

echo "-------------------"
