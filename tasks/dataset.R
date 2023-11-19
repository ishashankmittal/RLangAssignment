# For help with solving the assignment, visit: "https://cran.r-project.org/web/packages/explore/vignettes/explore_mtcars.html"

# Task 1: Load the "mtcars" dataset
# - Load the "mtcars" dataset using the datasets package.
# - Check the structure and summary of the dataset.
library(datasets)
data(mtcars)
str(mtcars)
summary(mtcars)

#installing and loading the ggplot2 package
install.packages("ggplot2")
library(ggplot2)

# Task 2: Create a bar plot for average miles per gallon (mpg)
# - Calculate the average miles per gallon (mpg) for each car model.
# - Create a bar plot to visualize the average mpg for each car model.
# - Customize the plot with appropriate labels, titles, and colors.
# - Save the plot as an image file.
#   You can choose the image format you prefer (e.g., PNG, JPEG, PDF).
#   Use the "ggsave" or "jpeg," "png," or "pdf" functions to save the plot.
# - Display the plot.
# Hint: You may want to use the ggplot2 package for creating and customizing the plot.

#There is no need to calculate the mean of mpg value for each car model since each car model has only one mpg value
p <- ggplot(data=mtcars, aes(x=rownames(mtcars), y=mtcars$mpg)) + geom_bar(stat="identity", width=1.0, color='black', fill='purple')
p <- p+theme(axis.text.x = element_text(angle = 90, hjust=1))
ggsave("mtcars_barplot1.pdf", p)
print(p)

# Task 3: Additional Customization
# - Customize the bar plot further by adding labels, adjusting colors, and improving the appearance.
# - Save the updated plot as a new image file.
# - Display the updated plot.
p <- p + labs(title="AVERAGE MPG OF CAR MODELS", x="Car Model", y="Miles per Gallon(mpg)")+theme(plot.title = element_text(colour = "red"))
ggsave("mtcars_plot2.pdf", p)
print(p)

# Task 4: Export Data
# - Save the modified "mtcars" dataset to a CSV file for further analysis.
# - Use the "write.csv" function to export the dataset.
write.csv(mtcars, "mtcars.csv")   #The data set is not modified since no changes were made

# Task 5: Summary and Reporting
# - Summarize the findings and observations from the data visualization.
# - Create a brief report explaining the insights gained from the visualization.
#Summary--
# The mpg values among the cars are diverse, ranging from just above 10 upto 33.9 miles per gallon.
# 'Toyota 'Corolla' is the most fuel efficient while 'Cadillac Fleetwood' and 'Lincoln Continental' the least.

# Task 6: Bonus Challenge (5 points)
# - Create a second type of plot (e.g., scatterplot, boxplot, or line chart) to explore another aspect of the "mtcars" dataset.
# - Customize the plot.
# - Save the plot as an image file.
# - Display the plot.

# Creating a scatterplot of Car weight vs mpg
s_plot <- ggplot(mtcars, aes(x = wt, y = mpg)) +geom_point(color = 'red', size = 3) + labs(title = "Scatterplot of Car Weight vs. Miles Per Gallon",
x = "Car Weight",
y = "Miles Per Gallon") + theme_minimal()

ggsave("scatterplot_mtcars.pdf", s_plot, width = 7, height = 7, units = "in")
print(s_plot)