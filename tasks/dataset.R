# For help with solving the assignment, visit: "https://cran.r-project.org/web/packages/explore/vignettes/explore_mtcars.html"

# Task 1: Load the "mtcars" dataset
# - Load the "mtcars" dataset using the datasets package.
# - Check the structure and summary of the dataset.
library(datasets)
data(mtcars)
str(mtcars)
summary(mtcars)

# Install and load the ggplot2 package
if(!require(ggplot2)){
  install.packages("ggplot2")
  library(ggplot2)
}


# Task 2: Create a bar plot for average miles per gallon (mpg)
# - Calculate the average miles per gallon (mpg) for each car model.
mean(mtcars$mpg)
# - Create a bar plot to visualize the average mpg for each car model.
p <- ggplot(data=mtcars, aes(x=rownames(mtcars), y=mtcars$mpg)) + geom_bar(stat="identity", width=0.8, color='steelblue', fill='skyblue') + theme(axis.text.x = element_text(angle = 90, hjust=1))
# - Customize the plot with appropriate labels, titles, and colors.
p <- p + labs(title="Average MPG for Car Models", x="Car Model", y="MPG")
# - Save the plot as an image file.
#   You can choose the image format you prefer (e.g., PNG, JPEG, PDF).
#   Use the "ggsave" or "jpeg," "png," or "pdf" functions to save the plot.
ggsave("barplot_mtcars.png", p)
# - Display the plot.
print(p)
# Hint: You may want to use the ggplot2 package for creating and customizing the plot.

# Task 3: Additional Customization
# - Customize the bar plot further by adding labels, adjusting colors, and improving the appearance.
p <- p + coord_flip()
p <- p + theme(plot.title = element_text(hjust = 0.5))
p <- p + aes(x = reorder(rownames(mtcars), mpg))
p <- p + labs(x="Car Model")
# - Save the updated plot as a new image file.
ggsave("barplot_mtcars-new.png", p)
# - Display the updated plot.
print(p)
# Task 4: Export Data
# - Save the modified "mtcars" dataset to a CSV file for further analysis.
# - Use the "write.csv" function to export the dataset.
write.csv(mtcars, "mtcars.csv")
# Task 5: Summary and Reporting
# - Summarize the findings and observations from the data visualization.
# - Create a brief report explaining the insights gained from the visualization.

# The mpg values among the cars are diverse, ranging from just above 10 upto 33.9 miles per gallon.
# 'Toyota 'Corolla' is the most fuel efficient while 'Cadillac Fleetwood' and 'Lincoln Continental' the least. 

# Task 6: Bonus Challenge (5 points)
# - Create a second type of plot (e.g., scatterplot, boxplot, or line chart) to explore another aspect of the "mtcars" dataset.
# - Customize the plot.
# - Save the plot as an image file.
cyl_vs_hp <- ggplot(mtcars, aes(x=factor(cyl), y=hp)) +
  geom_boxplot(fill="skyblue", color = "blue") +
  labs(x="Number of Cylinders", y="Horsepower", title = "Correlation between number of cylilnders on horsepower")
ggsave("cyl_vs_hp-mtcars.png", cyl_vs_hp)
# - Display the plot.
print(cyl_vs_hp)