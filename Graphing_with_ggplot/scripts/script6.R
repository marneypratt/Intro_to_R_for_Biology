# This code will give us a histogram of the diameters of all the hemlock trees in the orginal dataset

# Note that when we use geom_histogram() we only use one variable in the aesthetics (aes()) 
# R counts up the number of cases in each bin for you, and you set the binwidth

# You don't need to make any changes

# When you are done looking at the code, save this script and type submit() in the console

hist <- ggplot(data = hemlocks, aes(x = diameter)) + 
   geom_histogram(binwidth = 0.8, color = "white", fill= "#00BFC4") +
   xlab("Diameter (cm)") +
   ylab("Count") +
   theme_classic(base_size=20) 
print(hist)



