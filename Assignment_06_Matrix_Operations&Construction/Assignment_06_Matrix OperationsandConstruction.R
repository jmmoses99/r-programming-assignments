#Assignment 6 Matrix Operations

#Define Matrix
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

#Checking Matrix
View(A)
View(B)
#Defined Matrix C as Sum of Matrix A and B
C <- (A+B) 
print(C)
View(C)
#Create a Diagonal Matrix
D <- diag(c(4, 1, 2, 3))
View(D)
#Create a Custom 5x5 Matrix 

E <- diag(c(3,3,3,3,3))
View(E)
F <- matrix(c(0,2,2,2,2,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0), ncol = 5)
View(F)
#Matrix created by Matrix Addition
matrix_5 <-(E+F)
View(matrix_5)

#Matrix Created with C Bind and diag
G <- matrix(c(3,2,2,2,2), ncol = 1)
View(G)
H <- matrix(c(1,3,0,0,0,1,0,3,0,0,1,0,0,3,0,1,0,0,0,3), ncol = 4)
View(H)
new_matrix5 <- cbind(G,H)
View(new_matrix5)
diag(new_matrix5)
View(new_matrix5)
