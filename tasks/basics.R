# Create a numeric vector with values from 1 to 5
# Name the vector as "numeric_vector"

numeric_vector <- seq(1,5)

# Function to calculate the sum of a numeric vector
calculate_sum <- function(vector) {
    sum(vector)
}

# Function to calculate the mean of a numeric vector
calculate_mean <- function(vector) {
    mean(vector)
}

# Function to calculate the median of a numeric vector
calculate_median <- function(vector) {
    median(vector)
}

# Function to calculate the standard deviation of a numeric vector
calculate_std_deviation <- function(vector) {
    round(sd(vector),3)
}

# Function to calculate the range of a numeric vector
calculate_range <- function(vector) {
    # To find the range of the vector just subtract the minimum value from the maximum value
    max(vector)-min(vector)
}
