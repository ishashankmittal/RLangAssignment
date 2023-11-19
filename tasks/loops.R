# Task 1: Calculate the Sum of Even Numbers
# - Define a function called 'sum_even_numbers' that takes a positive integer 'n' as input.
# - Initialize a variable to store the sum of even numbers.
# - Use a loop to iterate from 1 to 'n'.
# - Check if each number is even and add it to the sum.
# - Return the sum of even numbers.
sum_even_numbers <- function(n) {
    # Your code here
    sum_even <-0
    for (i in 1:n) {
    if (i %% 2 == 0) {
      sum_even <- sum_even + i
      }
    }
    return (sum_even)
}

# Task 2: Calculate Factorial Using a Loop
# - Define a function called 'factorial_using_loop' that calculates the factorial of a non-negative integer 'n'.
# - Initialize a variable to store the factorial and set it to 1.
# - Use a loop to multiply the current number by the factorial.
# - Return the factorial.
factorial_using_loop <- function(n) {
    # Your code here
    factorial <- 1
    for (i in 1:n){
        factorial <- factorial*i
    }
    return (factorial)
}

# Task 3: Reverse a String
# - Define a function called 'reverse_string' that reverses a given string.
# - Initialize an empty string to store the reversed result.
# - Use a loop to reverse the characters in the string.
# - Return the reversed string.
reverse_string <- function(input_string) {
    # Your code here
    rev_string <-""
    for (i in nchar(input_string):1) {
    rev_string <- paste0(rev_string, substr(input_string, i, i))
    }
    return (rev_string)
  }

# Task 4: Count the Number of Vowels
# - Define a function called 'count_vowels' that counts the number of vowels in a string.
# - Convert the input string to lowercase for case-insensitivity.
# - Initialize a variable to count the vowels.
# - Use a loop to iterate through each character and check if it's a vowel.
# - Increment the vowel count and return it.
count_vowels <- function(input_string) {
    # Your code here
    vowel_count <- 0
    for (char in strsplit(input_string, NULL)[[1]]) {
     if (char %in% c("a", "e", "i", "o", "u","A","E","I","O","U")) {
      vowel_count <- vowel_count + 1
     }
   }
   return(vowel_count)
}

# Task 5: Generate a Fibonacci Sequence
# - Define a function called 'generate_fibonacci' that generates the first 'n' terms of the Fibonacci sequence.
# - Initialize a vector to store the Fibonacci sequence with the first two values (1, 1).
# - Use a loop to generate the subsequent Fibonacci numbers and add them to the vector.
# - Return the first 'n' terms of the Fibonacci sequence.
generate_fibonacci <- function(n) {
    # Your code here
    fibonacci_sequence <- c(1, 1)
   for (i in 3:n) {
     next_fibonacci <- fibonacci_sequence[i - 1] + fibonacci_sequence[i - 2]
     fibonacci_sequence <- c(fibonacci_sequence, next_fibonacci)
  }
  return(fibonacci_sequence[1:n])
}
