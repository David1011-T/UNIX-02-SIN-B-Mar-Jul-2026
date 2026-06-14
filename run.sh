#!/bin/bash

awk -f task6.awk "$1" | { head -n 1; sort; }