#Note that everything after hashtags (=number symbol) is ignored by R and present as a comment

#Below is a script where we want to make a graph that looks at the subjects'
#weight as a function of height using the davis dataset

#Replace all the blanks (______) with the necessary information

#the print code at the bottom is there so that the code in this script will be run in the console

#When you are done making changes, type submit() and then press enter in the console

scatter <- ggplot(data = davis, aes(x = height, y = weight)) +
  geom_point() +
  theme_classic(base_size=18)

print(scatter)