#Assignment 11

set.seed(123)
test_mat <- matrix(rnorm(50), nrow = 10)
print(test_mat)

#Function to fix  tukey outlier function in loop or code will not run properly

tukey.outlier <- function(x){
  q1 <- quantile(x,0.25) #first quartile
  q3 <- quantile(x,0.75) # third quartile
  Int_quart <- q3 - q1 # interquartile range
  return(x < (q1 - 1.5 *Int_quart)| x > (q3 + 1.5 *Int_quart))
}

corrected_tukey <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in seq_len(ncol(x))) {
    outliers[, j] <- outliers[, j] & tukey.outlier(x[, j]) #tukey is not defined so either delete it or define it
  }
  outlier.vec <- logical(nrow(x))
  for (i in seq_len(nrow(x))) {
    outlier.vec[i] <- all(outliers[i, ]) #  you can change all to any outliers if you want and it changes output
  }
  outlier.vec
  
}
  
  #Print outliers - can be added within loop
  #if (any (outlier.vec)){
    #cat ("Outlier rows:\n")
    #print(x[outlier.vec, , drop = FALSE])
    
  #}else{
   # cat ("No outliers.\n")
    
    #invisible(outlier.vec)
  #}
  
corrected_tukey(test_mat)







      