# Sample numeric vector
numeric_vector <- c(1, 2, 3, 4, 5)

# Define a context for the tests
context("Testing numeric calculations")

# Test the calculate_sum function
test_that("calculate_sum function is correct", {
    expect_equal(calculate_sum(numeric_vector), 15)
    message("calculate_sum function test passed! (2 points)")
})

# Test the calculate_mean function
test_that("calculate_mean function is correct", {
    expect_equal(calculate_mean(numeric_vector), 3)
    message("calculate_mean function test passed! (2 points)")
})

# Test the calculate_median function
test_that("calculate_median function is correct", {
    expect_equal(calculate_median(numeric_vector), 3)
    message("calculate_median function test passed! (2 points)")
})

# Test the calculate_std_deviation function
test_that("calculate_std_deviation function is correct", {
    expect_equal(calculate_std_deviation(numeric_vector), 1.581139)
    message("calculate_std_deviation function test passed! (2 points)")
})

# Print the total score and maximum score
total_score <- 0
max_score <- 8
cat(paste("Total Score: ", total_score, "/", max_score, "\n"))

# Provide a message based on the total score
if (total_score == max_score) {
    cat("Congratulations! All tests passed successfully.")
} else {
    cat("Some tests did not pass. Please review and resubmit your code.")
}
