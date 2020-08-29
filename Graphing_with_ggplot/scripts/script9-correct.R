# This code will give a simple box plot of the diameters of hemlock trees split by infestation

# You don't need to make any changes to this script.

# When you are done looking at the code, save this script and type submit() in the console


box <-ggplot(data = hemlocks, aes(x= infest, y = diameter)) + 
  geom_boxplot() +
  ylab("Tree Diameter (cm)") +
  xlab("Infestation") +
  theme_classic(base_size=20) 
print(box)