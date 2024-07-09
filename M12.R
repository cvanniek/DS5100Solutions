install.packages('vctrs')
library(vctrs)
library(tidyverse)

head(mpg)

# Exercise 12.1.

mpg %>%
  ggplot()

# can see that an empty output is generated in the plot window.

# Exercise 12.2.

mpg %>%
  ggplot(aes(x = cyl, y = hwy)) + 
  geom_point()

# Exercise 12.3.

mpg %>%
  ggplot(aes(x = class, y = drv)) + 
  geom_point()

# Exercise 12.4.

x <- seq(-6*pi, 6*pi, length.out = 100)
dat <- data.frame(x = x, y = sin(x)/x)
head(dat)

dat %>%
  ggplot(aes(x = x, y = y)) +
  geom_line()

# Exercise 12.5.

head(cars)

cars %>%
  ggplot(aes(x = speed, y = dist)) + 
  geom_point()

# Exercise 12.6.

cars %>%
  ggplot(aes(x = speed, y = dist)) + 
  geom_point(mapping = aes(color = dist > 80))

# Exercise 12.7.

cars %>%
  ggplot(aes(x = speed, y = dist)) + 
  geom_point(mapping = aes(color = dist > 80)) +
  scale_color_manual(values = c('blue', 'red'))

# Exercise 12.8.

cars %>%
  ggplot(aes(x = speed, y = dist)) + 
  geom_point(mapping = aes(color = dist > 80)) +
  scale_color_manual(values = c('blue', 'red')) +
  geom_smooth(method = 'loess')

# Exercise 12.9.

cars %>%
  ggplot(aes(x = speed)) +
  geom_histogram(bins = 10)

# Exercise 12.10.

mpg %>%
  ggplot() +
  geom_point(aes(x = hwy, y = cty)) +
  facet_grid(drv ~ cyl)

# Exercise 12.11.

data(iris)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(aes(shape = Species, color = Species)) +
  stat_density_2d(aes(fill = Species, color = Species), geom = "polygon", alpha = 0.1) +
  labs(title = "IRIS", x = "Sepal.Length", y = "Sepal.Width") +
  theme_minimal()
