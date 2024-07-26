import std/strformat

const ARRAY_SIZE = 10 

var numbers: array[ARRAY_SIZE, int]

for i in 0..ARRAY_SIZE-1:
    numbers[i] = i*10 


for i in 0..ARRAY_SIZE:
    if i mod 2 == 0: 
        echo i
    else:
        numbers[i] = 5*numbers[i] 

echo numbers
