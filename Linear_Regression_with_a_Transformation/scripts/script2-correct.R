#Below is a script where we want to make a graph that looks at the mean annual twig growth 
# for each tree (mean_ATG) as a function of average EHS density (mean_EHS) using the 
#hemlocks.sum dataset

#Replace all the blanks (______) with the necessary information

#the print code at the bottom is there so that the code in this script will be run in the console

#When you are done making changes, SAVE this script and then type submit() and then press enter in the console

scatter <- ggplot(data = hemlocks.sum, aes(x = mean_EHS, y = mean_ATG)) +
  geom_point() +
  theme_classic(base_size=18)

print(scatter)
