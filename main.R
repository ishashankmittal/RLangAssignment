# Load the 'testthat' package
library(testthat)

# Initialize scores
total_score <- 0
max_score <- 0

# Run tests
test_file("tests/test_basics.R")
test_file("tests/test_loops.R")

# Print the total score and maximum score
cat(paste("\n\nTotal Score: ", total_score, "/", max_score, "\n\n"))

# Provide a print based on the total score
if (total_score == max_score) {
    cat("Congratulations! All tests passed successfully.\n\n")
} else {
    cat("Some tests did not pass. Please review and resubmit your code.\n\n")
}
