# ECE2112_Hulipas_PA5
#### EXPERIMENT 5: INTRODUCTION TO MATLAB PROGRAMMING<br>**Submitted By: Kathleen Hazel L. Hulipas | 2ECE-A**
The content of this repository contains the _**Programming Assignment 5**_ for ECE2112 Advanced Computer Programming course A.Y. 2026 - 2027 which covers python problems from _**Module 5 - Introduction to Matlab Programming**_.

Objectives
---
At the end of this laboratory activity, the student should be able to:
  1. create real and complex matrices in MATLAB;
  2. distinguish transpose from complex-conjugate transpose operations;
  3. express a simultaneous linear system in matrix form; and
  4. solve and check a linear system using the inverse method and Cramer’s Rule

A. TRANPOSE OPERATIONS
---
Define the following matrices exactly as shown:<br>
<img width="603" height="105" alt="image" src="https://github.com/user-attachments/assets/dd683fa5-356d-48ad-947d-956d7ae1cd26" /><br>
For each matrix, compute and display all three expressions:
```
tranpose(A)
A’
A.’
```
where A is replaced by R and then by Z.
```matlab
R = [5 -2 0 7; 1 3 -4 2; 6 0 8 -1]
Z = [2+3*i -1+4*i 5-2*i; -3+i 6 2+5*i]

disp("R1 = transpose(R)")
R1 = transpose(R)

disp("R2 = R'")
R2 = R'

disp("R3 = R.'")
R3 = R.'

disp("Z1 = transpose(Z)")
Z1 = transpose (Z)

disp("Z2 = Z'")
Z2 = Z'

disp("Z3 = Z.'")
Z3 = Z.'
```
### OUTCOMES:
```matlab
R =
     5    -2     0     7
     1     3    -4     2
     6     0     8    -1

Z =
    14    15    -3
     1     6    22

R1 = transpose(R)
R1 =
     5     1     6
    -2     3     0
     0    -4     8
     7     2    -1

R2 = R'
R2 =
     5     1     6
    -2     3     0
     0    -4     8
     7     2    -1

R3 = R.'
R3 =
     5     1     6
    -2     3     0
     0    -4     8
     7     2    -1

Z1 = transpose(Z)
Z1 =
    14     1
    15     6
    -3    22

Z2 = Z'
Z2 =
    14     1
    15     6
    -3    22

Z3 = Z.'
Z3 =

    14     1
    15     6
    -3    22
```

Answer the following in MATLAB comments below your output:
```
a. Which operations give identical results for the real matrix R?
ans: Given that values inside matrix R are all real numbers, all R1, R2, and R3 give the same results (transposed version).

b. Which two operations give identical results for the complex matrix Z?
ans: Z1 and Z3 (transpose(Z) and Z.') returns identical results.

c. What additional operation is performed by the apostrophe operator ’ when the matrix contains complex entries?
ans: Observing Z2 (Z'), the apostrophe transposes the matrix and negates the imaginary part.
```

B. TWO METHODS FOR A LINEAR SYSTEM
---
Solve the simultaneous system:<br>
<img width="300" height="142" alt="image" src="https://github.com/user-attachments/assets/e5b99ae1-4b29-44d3-ba95-a6575e9c7ba3" /><br>
Create the coefficient matrix A and right-hand-side vector b. Then compute the solution in two ways

**1. Inverse Method** : compute x_inv using the inverse of A.

**2. Cramer's Rule** : replace one column of A at a time with b, use determinants, and store the result in x_cramer. A loop is optional


```matlab
A = [2 -1 3 2; 1 4 -2 1; 3 2 1 -1; -2 3 4 2]
b = [16; -7; 6; 7]

%determinant
det_A = det(A)

% inverse method
disp('Inverse Method:')
x_inv = inv(A)*b

% cramer's rule
disp("Cramer's Rule: ")

% first column
A1 = A;
A1(:, 1) = b
det_A1 = det(A1)

% second col
A2 = A;
A2(:, 2) = b
det_A2 = det(A2)

% third col
A3 = A;
A3(:, 3) = b
det_A3 = det(A3)

% fourth col
A4 = A;
A4(:, 4) = b
det_A4 = det(A4)

x_cramer = [det_A1/det_A;
            det_A2/det_A;
            det_A3/det_A;
            det_A4/det_A]

% norms
norm1 = norm(x_inv - x_cramer)
norm2 = norm(A * x_inv - b)

% summary display
disp("---Summary of Results---")
disp("Determinant: " + det_A)
disp("Solution using Inverse Method")
disp(x_inv)
disp("Solution using Cramer's Rule")
disp(x_cramer)
disp("norm(x_inv - x_cramer): " + norm1)
disp("norm(A * x_inv - b): " + norm2)
```
### OUTCOMES:
```matlab
A =
     2    -1     3     2
     1     4    -2     1
     3     2     1    -1
    -2     3     4     2

b =
    16
    -7
     6
     7

det_A =
   280

Inverse Method:
x_inv =
    2.0000
   -1.0000
    3.0000
    1.0000

Cramer's Rule: 
A1 =
    16    -1     3     2
    -7     4    -2     1
     6     2     1    -1
     7     3     4     2

det_A1 =
   560

A2 =
     2    16     3     2
     1    -7    -2     1
     3     6     1    -1
    -2     7     4     2

det_A2 =
  -280

A3 =
     2    -1    16     2
     1     4    -7     1
     3     2     6    -1
    -2     3     7     2

det_A3 =
  840.0000

A4 =
     2    -1     3    16
     1     4    -2    -7
     3     2     1     6
    -2     3     4     7

det_A4 =
   280

x_cramer =
    2.0000
   -1.0000
    3.0000
    1.0000

norm1 =
   1.1102e-16

norm2 =
   2.6645e-15

---Summary of Results---
Determinant: 280
Solution using Inverse Method
    2.0000
   -1.0000
    3.0000
    1.0000

Solution using Cramer's Rule
    2.0000
   -1.0000
    3.0000
    1.0000

norm(x_inv - x_cramer): 1.1102e-16
norm(A * x_inv - b): 2.6645e-15
```

To view the program for PA5: download [ECE2112_PA5](link), open and run on Matlab.

## **README file Version History:**
- October 20, 2026 - Drafted Readme File
- October 27, 2026 - Updated Readme File, Uploaded m-file
