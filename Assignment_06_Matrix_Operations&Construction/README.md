Objectives
Practice basic matrix arithmetic in R (addition, subtraction).
Learn to create diagonal matrices with diag().
Build a custom block‐structured matrix programmatically.
Document your code and results clearly on your blog

Tasks
Matrix Addition & Subtraction
In R, define:

A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

Then:
Compute A + B and display the result.
Compute A - B and display the result.

Create a Diagonal Matrix
Use diag() to build a 4 × 4 matrix with diagonal entries 4, 1, 2, 3:
D <- diag(c(4, 1, 2, 3))

Construct a Custom 5 × 5 Matrix
Generate this matrix:

     [,1] [,2] [,3] [,4] [,5]
[1,]    3    1    1    1    1
[2,]    2    3    0    0    0
[3,]    2    0    3    0    0
[4,]    2    0    0    3    0
[5,]    2    0    0    0    3
