ggplot(data = hemlock, aes(x= Location, y = HWA))+ 
  geom_point(aes(x= Location, y = HWA, fill = Location), shape=21, size=1, alhpa = 0.5,
             position=position_jitterdodge(jitter.width=0.6), show.legend=FALSE) +
  stat_boxplot(geom ='errorbar', width = 0.1,  na.rm = TRUE, lwd=0.75) +
  geom_boxplot(width = 0.5, na.rm = TRUE, outlier.shape= NA, alpha = 0.1, lwd=0.75) +
  stat_summary(fun=mean, geom="point",  shape=4, size=2,  
               na.rm = TRUE, show.legend = FALSE, colour = "black", stroke = 2) +
  ylab("HWA Density (insects/cm)") +
  xlab("Location") +
  coord_cartesian(expand=TRUE) +
  theme_classic(base_size=20) 