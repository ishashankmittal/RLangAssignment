# Task 1: Calculate the Sum of Even Numbers
# - Define a function called 'sum_even_numbers' that takes a positive integer 'n' as input.
# - Initialize a variable to store the sum of even numbers.
# - Use a loop to iterate from 1 to 'n'.
# - Check if each number is even and add it to the sum.
# - Return the sum of even numbers.
sum_even_numbers <- function(n) {
  sum <- 0
  for (i in 1:n) {
    if (i %% 2 == 0) {
      sum <- sum + i
    }
  }
  return(sum)
}

# Task 2: Calculate Factorial Using a Loop
# - Define a function called 'factorial_using_loop' that calculates the factorial of a non-negative integer 'n'.
# - Initialize a variable to store the factorial and set it to 1.
# - Use a loop to multiply the current number by the factorial.
# - Return the factorial.
factorial_using_loop <- function(n) {
  n <- max(1,n)
  for(i in (n-1):2) {
    n <- n * i
  }
  return(n)
}

# Task 3: Reverse a String
# - Define a function called 'reverse_string' that reverses a given string.
# - Initialize an empty string to store the reversed result.
# - Use a loop to reverse the characters in the string.
# - Return the reversed string.
reverse_string <- function(input_string) {
  reversed <- ""
  for (i in nchar(input_string):1) {
    reversed <- paste(reversed, substr(input_string, i, i), sep="")
  }
  return(reversed)
}

# Task 4: Count the Number of Vowels
# - Define a function called 'count_vowels' that counts the number of vowels in a string.
# - Convert the input string to lowercase for case-insensitivity.
# - Initialize a variable to count the vowels.
# - Use a loop to iterate through each character and check if it's a vowel.
# - Increment the vowel count and return it.
count_vowels <- function(input_string) {
   # input_string <- tolower(input_string)
  sum <- 0
  for(i in 1:nchar(input_string)){
    if(substr(input_string, i, i) %in% c("a", "e", "i", "o", "u")){
      sum <- sum + 1;
    }
  }
  return(sum)
}

# Task 5: Generate a Fibonacci Sequence
# - Define a function called 'generate_fibonacci' that generates the first 'n' terms of the Fibonacci sequence.
# - Initialize a vector to store the Fibonacci sequence with the first two values (1, 1).
# - Use a loop to generate the subsequent Fibonacci numbers and add them to the vector.
# - Return the first 'n' terms of the Fibonacci sequence.
generate_fibonacci <- function(n) {
  if(n == 0) return(numeric(0))        # returns empty vector
  if(n == 1) return(c(1))
  fib <- c(1, 1)
  for(i in 3:n){
    fib[i]=fib[i-1]+fib[i-2]
  }
  return(fib)
}
