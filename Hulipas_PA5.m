disp('EXPERIMENT 5: INTRODUCTION TO MATLAB PROGRAMMING')
disp('Kathleen Hazel L. Hulipas | 2ECE-A | October 27, 2026')
disp(' ')

% part A. Transpose Operations
disp('-----A. TRANSPOSE OPERATIONS-----')
R = [5 -2 0 7; 1 3 -4 2; 6 0 8 -1]
Z = [2+3i -1+4i 5-2i; -3+i 6 2+5i]

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

% answers to questions
disp("a. Which operations give identical results for the real matrix R?")
disp("ans: Given that values inside matrix R are all real numbers, all R1, R2, and R3 give the same results (transposed version).")
disp(' ')
disp("b. Which two operations give identical results for the complex matrix Z?")
disp("ans: Z1 and Z3 (transpose(Z) and Z.') returns identical results.")
disp(' ')
disp("c. What additional operation is performed by the apostrophe operator when the matrix contains complex entries?")
disp("ans: Observing Z2 (Z'), the apostrophe transposes the matrix and negates the imaginary part.")
disp(' ')

% -------------------------------------------------------------------------
% ANSWERS TO QUESTIONS (as comments and displayed in output):
%
% a. Which operations give identical results for the real matrix R?
%    Answer: R1, R2, and R3 give identical results because the entries of R 
%    are purely real (complex conjugation has no effect on real numbers).
%
% b. Which two operations give identical results for the complex matrix Z?
%    Answer: Z1 and Z3 (transpose(Z) and Z.') give identical results because 
%    both perform a standard transpose without taking the complex conjugate.
%
% c. What additional operation is performed by the apostrophe operator 
%    when the matrix contains complex entries?
%    Answer: The apostrophe operator (') performs a Hermitian transpose 
%    (complex conjugate transpose)—it transposes the array and negates the 
%    sign of all imaginary components.
% -------------------------------------------------------------------------

% part B. Two Methods for a Linear System
disp('-----B. TWO METHODS FOR A LINEAR SYSTEM-----')
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