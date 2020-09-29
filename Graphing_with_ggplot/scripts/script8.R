# This is the same code as the previous script.

# Modify the code so that it is split by the type of infestation (variable = infest) rather than size class

# Leave everything else the same

# When you are done modifying the code, save this script and type submit() in the console

hist3 <- ggplot(data = hemlocks, aes(x = diameter))+ 
   geom_histogram(binwidth = 0.8, color = "white", fill= "#00BFC4") +
   facet_grid(size.group ~ .) +
   xlab("Diameter (cm)") +
   ylab("Count") +
   coord_cartesian(xlim = c(0,45)) +
   theme_classic(base_size=20) 
print(hist3)

