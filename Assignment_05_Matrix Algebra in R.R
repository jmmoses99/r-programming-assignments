


#Create the matrices

A <- matrix(1:100,  nrow = 10)

B <- matrix(1:1000, nrow = 10)

#Inspect dimensions

dim(A)  # should be 10×10
dim(B)  # 10×100 — not square

#Compute inverse and determinant

# For A
invA <- solve(A) #error due to singular matrix
detA <- det(A)
print(detA) #returns 0 means inverse is undefined; singular matrix (square matrix)

# For B, use tryCatch to capture errors

invB <- tryCatch(solve(B), error = function(e) e)
print(invB) #Matrix 10x100 is not a perfect square
detB <- tryCatch(det(B),   error = function(e) e)
print(invB)
print(detB)
