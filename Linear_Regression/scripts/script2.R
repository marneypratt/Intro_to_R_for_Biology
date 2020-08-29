#Below is a script where we want to make a nicer graph that looks at the subjects'
#weight as a function of height using the davis dataset

#the print code at the bottom is there so that the code in this script will be run in the console

#You do not need to make any changes to this script
#It is the same as the first script we made but we have added the geom_smooth() function 
#to add a line using the linear method (lm) for method, 
#type submit() and then press enter in the console when you are done examining the code

scatter.line <- ggplot(data = davis, aes(x = height, y = weight)) +
  geom_point() +
  geom_smooth (method = "lm") +
  xlab("Height (cm)") +
  ylab("Weight (kg)") +
  theme_classic(base_size=18)

print(scatter.line)