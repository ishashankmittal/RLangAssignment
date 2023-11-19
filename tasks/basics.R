# Create a numeric vector with values from 1 to 5
# Name the vector as "numeric_vector"
numeric_vector <- c(1, 2, 3, 4, 5)

# Function to calculate the sum of a numeric vector
calculate_sum <- function(vector) {
    # TODO: Complete this function to calculate the sum of 'vector'
    sum(vector)
}

# Function to calculate the mean of a numeric vector
calculate_mean <- function(vector) {
    # TODO: Complete this function to calculate the mean of 'vector'
    mean(vector)
}

# Function to calculate the median of a numeric vector
calculate_median <- function(vector) {
    # TODO: Complete this function to calculate the median of 'vector'
    median(vector)
}

# Function to calculate the standard deviation of a numeric vector
calculate_std_deviation <- function(vector) {
    # TODO: Calculate the standard deviation and round to 3 decimal places
    round(sd(vector),digits=3)
}

# Function to calculate the range of a numeric vector
calculate_range <- function(vector) {
    # TODO: Complete this function to calculate the range of 'vector'
    # To find the range of the vector just subtract the minimum value from the maximum value
    range <- max(vector)-min(vector)
    print(range)
}
