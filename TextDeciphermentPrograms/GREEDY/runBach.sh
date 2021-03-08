#!/bin/bash

for filename in ../Ciphers/*; do
    python2 Solver/greedySolver.py LM/Bach.arpa $filename | python3 Solver/formatOutput.py > Decipherments/`basename "$filename"`
done