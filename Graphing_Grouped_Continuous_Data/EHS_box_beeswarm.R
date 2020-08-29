# Box plot of the EHS density at all 4 locations, X = mean, 
# all points symmetrically jittered with beeswarm
# Erase the stat_summary function if you want to remove the mean
EHS.box3 <-ggplot(data = hemlock, aes(x= Location, y = EHS))+ 
  geom_beeswarm(aes(x= Location, y = EHS, fill=Location), shape=21, size=1, 
                alpha=0.5, priority = "random", show.legend=FALSE) +
  stat_boxplot(geom ='errorbar', width = 0.1,  na.rm = TRUE, lwd=0.75) +
  geom_boxplot(width = 0.5, na.rm = TRUE, outlier.shape= NA, alpha = 0.1, lwd=0.75) +
  stat_summary(fun=mean, geom="point",  shape=4, size=2,  
               na.rm = TRUE, show.legend = FALSE, colour = "black", stroke = 2) +
  ylab("EHS Density (insects/cm)") +
  xlab("Location") +
  coord_cartesian(expand=TRUE) +
  theme_classic(base_size=20) 
print(EHS.box3)