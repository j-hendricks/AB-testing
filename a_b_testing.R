# load dataframe
df <- read.csv("AB_Test_Results.csv")

# no null values
print(any(is.na(df)))

# split data between control and treatment group
split_df <- split(df, df$VARIANT_NAME)

# perform two-sample t test
test <- t.test(split_df$control$REVENUE, split_df$variant$REVENUE)

# print results; p-value is 0.2047, which is statistically insignificant 
print(test)


