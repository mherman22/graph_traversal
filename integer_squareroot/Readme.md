# README: Integer Square Root Calculation in Prolog

## Overview

This Prolog code defines a predicate to compute the integer square root of a given non-negative integer. The integer square root of a number \( N \) is the largest integer \( I \) such that \( I^2 \) is less than or equal to \( N \). 

## Predicate

### `integer_sqrt/2`

- **Syntax:**
  ```prolog
  integer_sqrt(N, I).
  ```
- **Description**: The integer_sqrt/2 predicate calculates the integer square root of a non-negative integer ( N ). It binds ( I ) to the largest integer such that ( I^2 ) is less than or equal to ( N ).

- **Parameters:**

   - **N** - The non-negative integer whose integer square root is to be computed.
   - **I** - The resulting integer square root of N.

- **Rules**:

   - **between(0, N, I)** generates integers ( I ) in the range from 0 to ( N ).
   - **I * I =< N** ensures that ( I ) squared is less than or equal to ( N ).
   - **I1 is I + 1** computes the next integer ( I1 ) after ( I ).
   - **I1 * I1 > N** ensures that ( I1 ) squared is greater than ( N ), confirming that ( I ) is the largest integer for which ( I^2 ) is less than or equal to ( N ).
   - ! (cut) is used to stop further backtracking once a valid integer square root is found.

## Example Usage
Here are some example queries and their results:

Query:
 ```
    ?- integer_sqrt(16, I).
```
Result:
```
I = 4.
```
Query:
```
?- integer_sqrt(20, I).
```
Result:
```
I = 4.
```
Query:
```
?- integer_sqrt(25, I).
```
Result:
```
I = 5.
```
## Explanation
The **integer_sqrt/2** predicate works by:

1. Generating possible integer values for ( I ) within the range [0, N].
2. Checking if ( I^2 ) is less than or equal to ( N ).
3. Ensuring that the next integer ( I1 ) squared is greater than ( N ), confirming ( I ) as the integer square root.
4. The cut operator ! is used to prevent the predicate from backtracking and finding other possible values after a valid result is found.

## Notes
- The predicate assumes that the input ( N ) is a non-negative integer. For negative values, the predicate will not produce a meaningful result.
- The integer_sqrt/2 predicate computes the result efficiently and terminates after finding the correct integer square root.
- This Prolog code is useful for tasks that require the integer square root of a number without floating-point calculations.
