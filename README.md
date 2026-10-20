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
Answer the following in MATLAB comments below your output:
```
a. Which operations give identical results for the real matrix R?
b. Which two operations give identical results for the complex matrix Z?
c. What additional operation is performed by the apostrophe operator ’ when the matrix contains complex entries?
```

B. TWO METHODS FOR A LINEAR SYSTEM
---
Solve the simultaneous system:<br>
<img width="300" height="142" alt="image" src="https://github.com/user-attachments/assets/e5b99ae1-4b29-44d3-ba95-a6575e9c7ba3" /><br>
Create the coefficient matrix A and right-hand-side vector b. Then compute the solution in two ways

**1. Inverse Method** : compute x_inv using the inverse of A.

**2. Cramer's Rule** : replace one column of A at a time with b, use determinants, and store the result in x_cramer. A loop is optional

To view the program for PA5: download [ECE2112_PA5](link), open and run on Matlab.

## **README file Version History:**
- October 20, 2026 - Drafted Readme File
