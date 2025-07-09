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

library(dplyr)

# 1. Select specific columns
df_step2 <- superstore %>%
  select(`Order.ID`, `Order.Date`, `Customer.Name`, Sales, Profit)

  # 2. Filter for Profit > 100
df_step2 <- df_step2 %>%
  filter(Profit > 100)

  # 3. Sort by Sales descending
df_step2 <- df_step2 %>%
  arrange(desc(Sales))

  # Inspect the result
head(df_step2)