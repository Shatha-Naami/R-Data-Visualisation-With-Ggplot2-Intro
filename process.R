# description: visualization with ggplot2 package

# load the package
library(ggplot2)

# 3 essential elements
# shortcut function: qplot()

qplot(data = msleep, # the data comes from the msleep object
      x = conservation,# the variable conservation is mapped to the aesthetic x
      geom = 'bar') # the geometry is "bar", for “bar chart”.

# Scatterplots
# data = economics
#  full gglot2 syntax
ggplot(data = economics,
       mapping = aes(x = date,
                     y = unemploy)) +
  geom_point()

# other ex
ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy,
                     colour = class)) +
  geom_point()

# Trend lines
ggplot(mpg,
       aes(x = displ,
           y = hwy)) +
  geom_smooth()

ggplot(mpg,
       aes(x = displ,
           y = hwy)) + 
  geom_point(mapping = aes(colour = class)) +
  geom_smooth(method = 'lm')

# add a variable and a smooth line
ggplot(economics,
       aes(x = date,
           y = unemploy)) + 
  geom_point(aes(colour = uempmed)) +
  geom_smooth()

# Bar charts and ordered factors
ggplot(data = diamonds,
       aes(x = cut,
           fill = clarity)) + 
  geom_bar()

# Customizing a plot with theme
ggplot(data = diamonds,
       aes(x = cut)) + 
  geom_bar(fill = 'tomato') +
  labs(title = "Where are the bad ones?",
       x = "Quality of the cut",
       y = "Number of diamonds")

# Horizontal bar charts
# way 1
ggplot(data = diamonds,
       aes(x = cut)) + 
  geom_bar(fill = 'tomato') +
  labs(title = "Where are the bad ones?",
       x = "Quality of the cut",
       y = "Number of diamonds") +
  coord_flip() +
  theme_minimal()

# way 2
ggplot(diamonds,
       aes(y = cut)) + # switch here...
  geom_bar(fill = "tomato") +
  labs(title = "Where are the bad ones?",
       y = "Quality of the cut", # ...but also here!
       x = "Number of diamonds") # ...and here!