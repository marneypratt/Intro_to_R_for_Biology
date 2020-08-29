# The dataset we are using is still hemlocks.h, and the variables you are graphing are still x=diameter and y=height 

# This time we want to use location instead of size.group for the color (make the change below)

# By adding size = 3 in the geom_point() function we made the points a little larger

# We also added a geom_smooth() function to add linear regression lines

# The only changes you need to make are to the statements regarding color from size.group to location
# change the color in aes() and labs() (capitalize Location in the legend label)

# When you are done making changes, save this script and type submit() in the console

g3 <- ggplot(data = hemlocks.h, aes(x = diameter, y = height, color = size.group)) +
      geom_point(size = 3) +
      geom_smooth(method = "lm", se = FALSE) +
      ylab("Height (cm)") +
      xlab("Diameter (cm)") +
      labs(color = "Size Class") +
      theme_classic(base_size = 18)
print(g3)


