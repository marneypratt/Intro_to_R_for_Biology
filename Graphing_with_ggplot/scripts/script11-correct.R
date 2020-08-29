# This code is the similar to the previous one with the addition of points using geom_point()
# An additional aes() is included within geom_point to make the fill of the points different colors 
# based on infestation.  We have also "jittered" the points horizontally using the position statement
# so they don't overlap each other too much.  Changing the alpha of the points makes them partially 
# transparent so they show but don't stand out too much and obscure each other and the boxes.

# we have also made the boxes darker by changing the line width (lwd=0.75)
# and removed the outlier points using outlier.shape=NA because the presence of the points make 
# having outlier points redundant

# You don't need to make any changes to this script.

# When you are done looking at the code, save this script and type submit() in the console

box2 <-ggplot(data = hemlocks, aes(x = infest, y = diameter)) + 
  geom_boxplot(lwd=0.75, outlier.shape= NA) + 
  geom_point(aes(x= infest, y = diameter, fill = infest), shape=21, size=2, alpha = 0.5,
             position=position_jitterdodge(jitter.width=1.5), show.legend=FALSE) +
  stat_summary(fun=mean, geom="point", shape=4, size=2, colour="black", stroke=2) +
  ylab("Tree Diameter (cm)") +
  xlab("Infestation") +
  theme_classic(base_size=20) 
print(box2)