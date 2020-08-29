# The only changes you need to make here are to add log() around each variable in the aes() function
# Also note the changes in the labels by changing them as well - example "log(Height (cm))"

# When you are done making changes, save this script and type submit() in the console

g4 <- ggplot(data = hemlocks.h, aes(x = log(diameter), y = log(height), color = location)) +
      geom_point(size = 3) +
      geom_smooth(method = "lm", se = FALSE) +
      ylab("log(Height (cm))") +
      xlab("log(Diameter (cm))") +
      labs(color = "Location") +
      theme_classic(base_size = 18)
print(g4)

##save the graph as a jpeg (or use ?ggsave to see the help file with more options)
ggsave("heightVdiameter.jpg")


