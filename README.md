# MATLAB Logical Indexing Bug with Empty Arrays

This repository demonstrates an uncommon bug in MATLAB related to logical indexing when dealing with empty arrays.  The bug arises from incorrect handling of logical indexing when the resulting index is empty. This can lead to unexpected behavior or errors if not properly addressed.

## Bug Description
The `myFunction` in `bug.m` shows an example where logical indexing with an empty array produces unexpected behavior. Specifically, when the input array is such that no elements satisfy both conditions (`input > 5` and `input < 10`), the resulting indexed array might not be correctly recognized as empty, leading to potential issues in subsequent operations.  The `bugSolution.m` provides a corrected version with proper handling.

## How to Reproduce
1. Clone this repository.
2. Open `bug.m` and `bugSolution.m` in MATLAB.
3. Run `bug.m` with different inputs, including an empty array and an array where no elements satisfy the conditions.  Observe the unexpected behavior.
4. Run `bugSolution.m` with the same inputs. Observe how the corrected function handles empty index cases gracefully.

## Solution
The solution involves explicitly checking for the empty array condition arising from the logical indexing before attempting to use the index. The corrected function in `bugSolution.m` demonstrates the best practice.