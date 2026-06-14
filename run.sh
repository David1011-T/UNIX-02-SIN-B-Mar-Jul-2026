#!/bin/bash

# Run the awk script, separate the header using head, and sort the rest
awk -f task6.awk "$1" | { head -n 1; sort; }