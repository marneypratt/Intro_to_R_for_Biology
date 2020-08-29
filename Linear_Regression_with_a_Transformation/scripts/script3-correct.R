#Below is a script where we want to make a graph that looks at the log mean annual twig growth 
# for each tree (mean_ATG) as a function of log mean EHS density (mean_EHS) using the 
#hemlocks.sum dataset

#You don't need to make any changes

#the print code at the bottom is there so that the code in this script will be run in the console

#When you are done examining this script, type submit() and then press enter in the console

reg.plot <- ggplot(data = hemlocks.sum, aes(x = log(mean_EHS), y = log(mean_ATG))) +
  geom_point() +
  geom_smooth (method = "lm") +
  xlab("log(EHS Density (#/cm))") +
  ylab("log(Annual Twig Growth (cm))") +
  theme_classic(base_size=18)

print(reg.plot)
