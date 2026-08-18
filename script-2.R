# Load tidyverse for ggplot2 and diamonds data
library(tidyverse)

# Create a beautiful violin plot of the diamonds dataset
plot <- diamonds |>
  ggplot(aes(x = cut, y = price, fill = cut)) +
  geom_violin(alpha = 0.7) +
  geom_boxplot(width = 0.2, alpha = 0.9, color = "black") +
  scale_fill_brewer(palette = "Set2") +
  labs(
    title = "Distribution of Diamond Prices by Cut Quality",
    subtitle = "Violin plot with embedded box plots",
    x = "Cut Quality",
    y = "Price ($)",
    fill = "Cut"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 14, face = "bold"),
    plot.subtitle = element_text(size = 11),
    axis.text.x = element_text(size = 11)
  )

# Save the plot
ggsave("diamonds-2.png", plot, width = 10, height = 6, dpi = 150)
