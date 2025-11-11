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

Tasks
Reproduce the Error
In R, create a test matrix and run the function:
set.seed(123)
test_mat <- matrix(rnorm(50), nrow = 10)
tukey_multiple(test_mat)
Capture the exact error message you see.
Diagnose the Bug
Reflect on why using && inside the loop causes the failure. (Recall that && only returns a single TRUE/FALSE for the first element, whereas you need element‑wise comparison.)
Fix the Code
Edit the function so that the logical operation is applied element‑wise. Specifically, replace the buggy line with the correct operator.
# Corrected inside the loop:
outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])
Validate Your Fix
Re‑run your corrected function on test_mat and verify it returns a logical vector of length 10 without error:
corrected_tukey <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in seq_len(ncol(x))) {
    outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])
  }
  outlier.vec <- logical(nrow(x))
  for (i in seq_len(nrow(x))) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  outlier.vec
}

corrected_tukey(test_mat)
