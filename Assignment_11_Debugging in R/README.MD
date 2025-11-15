#Assignment 11
Debugging practice:
Objectives
Learn to reproduce and interpret error messages in R.
Practice identifying and fixing logical vs. element‑wise operations.
Document a defensive programming workflow.
Background & Buggy Code
Below is a function intended to flag rows of a numeric matrix x that are outliers in every column according to the Tukey rule. It contains a deliberate bug:

tukey_multiple <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in 1:ncol(x)) {
    outliers[, j] <- outliers[, j] && tukey.outlier(x[, j])
  }
  outlier.vec <- vector("logical", length = nrow(x))
  for (i in 1:nrow(x)) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  return(outlier.vec)
}
Hint: The line with && may be incorrect. Maybe? 

