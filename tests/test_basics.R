# Load the testthat package
library(testthat)

# Load the script to be tested
source("../tasks/basics.R")

# Define a context for the tests
context("Testing basics.R")

# Test the sum calculation
test_that("Sum calculation is correct", {
    max_score <<- max_score + 5 # Assign the maximum score for this test

    sum_result <- calculate_sum(numeric_vector)

    if (length(sum_result) == 0) {
        print("You have not completed the Sum calculation task.")
    } else if (sum_result == 15) {
        total_score <<- total_score + 5 # Assign the score for this test
        print("Sum calculation test passed! (2 points)")
    } else {
        print("Sum calculation test failed.")
    }
    expect_equal(sum_result, 15)
})

# Test the mean calculation
test_that("Mean calculation is correct", {
    max_score <<- max_score + 5

    mean_result <- calculate_mean(numeric_vector)

    if (length(mean_result) == 0) {
        print("You have not completed the Mean calculation task.")
    } else if (mean_result == 3) {
        total_score <<- total_score + 5
        print("Mean calculation test passed! (2 points)")
    } else {
        print("Mean calculation test failed.")
    }
    expect_equal(mean_result, 3)
})

# Test the median calculation
test_that("Median calculation is correct", {
    max_score <<- max_score + 5

    median_result <- calculate_median(numeric_vector)

    if (length(median_result) == 0) {
        print("You have not completed the Median calculation task.")
    } else if (median_result == 3) {
        total_score <<- total_score + 5
        print("Median calculation test passed! (2 points)")
    } else {
        print("Median calculation test failed.")
    }
    expect_equal(median_result, 3)
})

# Test the standard deviation calculation
test_that("Standard deviation calculation is correct", {
    max_score <<- max_score + 5

    sd_result <- calculate_std_deviation(numeric_vector)

    if (length(sd_result) == 0) {
        print("You have not completed the Standard Deviation calculation task.")
    } else if (sd_result == 1.581) {
        total_score <<- total_score + 5
        print("Standard deviation calculation test passed! (2 points)")
    } else {
        print("Standard deviation calculation test failed.")
    }
    expect_equal(sd_result, 1.581)
})

# Test the calculate_range function
test_that("calculate_range function is correct", {
    max_score <<- max_score + 5

    range_result <- calculate_range(numeric_vector)

    if (length(range_result) == 0) {
        print("You have not completed the Range calculation task.")
    } else if (range_result == 4) {
        total_score <<- total_score + 5
        print("Range calculation test passed! (2 points)")
    } else {
        print("Range calculation test failed.")
    }
    expect_equal(range_result, 4)
})
