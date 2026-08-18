# Add integers from 1 through 10
result <- sum(1:10)
print(result)

# Load tidyverse for ggplot2 and diamonds data
library(tidyverse)

# Create a beautiful plot of the diamonds dataset
plot <- diamonds |>
  ggplot(aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.5) +
  facet_wrap(~clarity) +
  labs(
    title = "Diamond Prices by Carat Weight",
    subtitle = "Colored by cut quality, faceted by clarity",
    x = "Carat Weight",
    y = "Price ($)",
    color = "Cut"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 14, face = "bold"),
    plot.subtitle = element_text(size = 11)
  )

# Save the plot
ggsave("diamonds-1.png", plot, width = 12, height = 8, dpi = 150)
