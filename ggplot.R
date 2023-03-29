library(ggplot2)
ggplot(mtcars, aes(mpg, hp)) +
  geom_point(col= "red",
             pch=16,
             ) +
  geom_smooth(fill ="green",
              size= 1,
              alpha=0.2
              ) +
  theme_minimal()
