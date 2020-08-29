# This is the same as the previous code 

# Change the binwidth to 5.  Don't make any other changes

# When you are done modifying the code, save this script and type submit() in the console

hist1 <- ggplot(data = hemlocks, aes(x = diameter)) + 
   geom_histogram(binwidth = 5, color = "white", fill= "#00BFC4") +
   xlab("Diameter (cm)") +
   ylab("Count") +
   theme_classic(base_size=20) 
print(hist1)



