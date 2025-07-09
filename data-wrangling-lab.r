# 1. Load the dataset
# Adjust the path if your CSV lives elsewhere
superstore <- read.csv("Sample - Superstore.csv", stringsAsFactors = FALSE)

# 2. Explore the dataset
# a) Structure
str(superstore)

# b) First few rows
head(superstore)

# c) Summary statistics
summary(superstore)

# 3. Dimensions
cat("Number of rows: ", nrow(superstore), "\n")
cat("Number of columns: ", ncol(superstore), "\n")