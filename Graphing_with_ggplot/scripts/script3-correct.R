# The dataset we are using is still hemlocks.h, and the variables you are graphing are still x=diameter and y=height 

# adding color = size.group in the aes() function makes each size class of the size.group 
# categorical variable a different color

# By adding size = 3 in the geom_point() function we made the points a little larger

# We added nicer labels using "lab" functions (ylab = y-axis label, xlab = x-axis label)
# labs(color = "Size Class") relabeled the size.group variable in the legend to look nicer

# theme_classic() takes away the gray background and makes the graph look nicer in general
# the base_size = 18 argument inside makes the base font size larger for the whole graph

# When you are done looking this over, save this script and type submit() in the console

g2 <- ggplot(data = hemlocks.h, aes(x = diameter, y = height, color = size.group)) +
      geom_point(size = 3) +
      ylab("Height (cm)") +
      xlab("Diameter (cm)") +
      labs(color = "Size Class") +
      theme_classic(base_size = 18)
print(g2)