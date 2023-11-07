# Load the testthat package
library(testthat)

# Load the script to be tested
source("../tasks/loops.R")

# Define a context for the tests
context("Testing loops.R")

# Test for all five tasks

test_that("Function tests", {
    max_score <<- max_score + 25 # Assign the maximum score for this set of tests

    # Test input
    test_input <- 10

    # Test Task 1: Calculate the Sum of Even Numbers
    expected_result1 <- 30 # 2 + 4 + 6 + 8 + 10 = 30
    result1 <- sum_even_numbers(test_input)
    expect_equal(result1, expected_result1)
    if (identical(result1, expected_result1)) {
        total_score <<- total_score + 5 # Assign the score for this task
        print("Task 1: Sum calculation test passed! (2 points)")
    } else {
        print("Task 1: Sum calculation test failed.")
    }

    # Test Task 2: Calculate Factorial Using a Loop
    expected_result2 <- 3628800 # 10! = 3628800
    result2 <- factorial_using_loop(test_input)
    expect_equal(result2, expected_result2)
    if (identical(result2, expected_result2)) {
        total_score <<- total_score + 5 # Assign the score for this task
        print("Task 2: Factorial calculation test passed! (2 points)")
    } else {
        print("Task 2: Factorial calculation test failed.")
    }

    # Test Task 3: Reverse a String
    test_string <- "abcdef"
    expected_result3 <- "fedcba"
    result3 <- reverse_string(test_string)
    expect_equal(result3, expected_result3)
    if (identical(result3, expected_result3)) {
        total_score <<- total_score + 5 # Assign the score for this task
        print("Task 3: String reversal test passed! (2 points)")
    } else {
        print("Task 3: String reversal test failed.")
    }

    # Test Task 4: Count the Number of Vowels
    test_string2 <- "Hello, World!"
    expected_result4 <- 3 # "e" + "o" + "o" = 3 vowels
    result4 <- count_vowels(test_string2)
    expect_equal(result4, expected_result4)
    if (identical(result4, expected_result4)) {
        total_score <<- total_score + 5 # Assign the score for this task
        print("Task 4: Vowel counting test passed! (2 points)")
    } else {
        print("Task 4: Vowel counting test failed.")
    }

    # Test Task 5: Generate a Fibonacci Sequence
    expected_result5 <- c(1, 1, 2, 3, 5, 8, 13, 21, 34, 55)
    result5 <- generate_fibonacci(test_input)
    expect_equal(result5, expected_result5)
    if (identical(result5, expected_result5)) {
        total_score <<- total_score + 5 # Assign the score for this task
        print("Task 5: Fibonacci sequence test passed! (2 points)")
    } else {
        print("Task 5: Fibonacci sequence test failed.")
    }
})
