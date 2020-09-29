# This code will give a histogram of the diameters of hemlock trees split by size class

# Note that there was one larger tree at MacLeish (MCL) that was 73 cm in diameter
# this one tree was cut off this graph because
# we set the max for the x-axis to 45 here using coord_cartesian(xlim = c(0,45)) 
# to be able to see the majority of the data better.

# You don't need to make any changes to this script.

# When you are done looking at the code, save this script and type submit() in the console

hist2 <- ggplot(data = hemlocks, aes(x = diameter))+ 
   geom_histogram(binwidth = 0.8, color = "white", fill= "#00BFC4") +
   facet_grid(size.group ~ .) +
   xlab("Diameter (cm)") +
   ylab("Count") +
   coord_cartesian(xlim = c(0,45)) +
   theme_classic(base_size=20) 
print(hist2)

