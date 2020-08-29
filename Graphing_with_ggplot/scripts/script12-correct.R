# This graph uses the position statement in geom_point to "jitter" the points horizontally
# similar to how we did it in the previous boxplot

# Also similar to the box plot, we have used the stat_summary() function here
# But this time we are graphing the median since these data are not normally distributed

# We also removed the legend by using theme(legend.position="none").  The legend is not needed here
# because which group goes with which points is already labeled on the x-axis
# The figure caption (also usually called a legend, which causes confusion) that you would type below
# the figure in a paper will descibe in words what the symbols and acronyms in the graph represent.

# You don't need to make any changes to this script.

# When you are done looking at the code, save this script and type submit() in the console

dot.median <-ggplot(data = hemlocks, aes(x = infest, y = diameter, fill = infest)) + 
  geom_point(shape=21, size=3, alpha = 0.5, position=position_jitterdodge(jitter.width=1)) +
  stat_summary(fun = median, fun.min = median, fun.max = median, geom = "crossbar", 
               width = 0.5, size = 0.75, colour = "black") +
  ylab("Tree Diameter (cm)") +
  xlab("Infestation") +
  theme_classic(base_size=20) +
  theme(legend.position="none") 
print(dot.median)