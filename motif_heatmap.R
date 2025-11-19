# Load ggplot2
library(ggplot2)

# Create a simple plot
df <- data.frame(x = 1:10, y = (1:10)^2)
ggplot(df, aes(x = x, y = y)) +
  geom_line(color = "blue") +
  ggtitle("Test Plot: y = x^2")
