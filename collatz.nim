import std/strformat
import sequtils
import os 

const COLLATZ_SIZE = 100000000; 

var collatz_seq: array[COLLATZ_SIZE,int]; 

proc calculate_collatz(number:int): int = 
    var i = 0 
    var collatz = number  
    while collatz != 2:
        if collatz mod 2 == 0 :
            collatz = int(collatz/2)
        else:
            collatz = 3*collatz + 1
        i = i + 1
    return i  

for i in 3..COLLATZ_SIZE-1:
    collatz_seq[i] = calculate_collatz(i)

let index_max_collatz =  sequtils.maxIndex(collatz_seq)
let max_collatz_value = collatz_seq[index_max_collatz]

echo fmt"Maximum {max_collatz_value} Starting Number {index_max_collatz}"