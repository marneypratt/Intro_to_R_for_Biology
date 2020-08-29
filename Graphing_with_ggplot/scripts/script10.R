# This code is the same as the previous one with the addition of the mean using the stat_summary() function

# the mean is shown using an x by indicating shape=4

# You don't need to make any changes to this script.

# When you are done looking at the code, save this script and type submit() in the console


box <-ggplot(data = hemlocks, aes(x = infest, y = diameter)) + 
  geom_boxplot() + 
  stat_summary(fun=mean, geom="point", shape=4, size=2, colour="black", stroke=2) +
  ylab("Tree Diameter (cm)") +
  xlab("Infestation") +
  theme_classic(base_size=20) 
print(box)