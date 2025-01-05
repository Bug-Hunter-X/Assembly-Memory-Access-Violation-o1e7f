# Assembly Memory Access Violation Bug

This repository demonstrates a common error in assembly programming: accessing memory outside the allocated bounds. The bug is in the `bug.asm` file. The solution (`bugSolution.asm`) shows how to prevent this issue by adding bounds checking before memory access.

## Bug Description

The code attempts to access an array element using an index stored in the ECX register. However, it fails to check if the index is within the valid range of the array. If the index is too large, it may lead to a segmentation fault or other unpredictable behavior.

## Solution

The solution adds a check before accessing the array element. It verifies that the index is within the array's boundaries before performing the memory access.  The solution uses conditional jumps to manage this check.