EHS.box <-ggplot(data = hemlock, aes(x= Location, y = EHS, color=Location))+ 
  stat_boxplot(geom ='errorbar', width = 0.1,  na.rm = TRUE, lwd=0.75, show.legend = FALSE) +
  geom_boxplot(width = 0.5, na.rm = TRUE,lwd=0.75, show.legend = FALSE) +
  stat_summary(fun=mean, geom="point",  shape=4, size=2,  
               na.rm = TRUE, show.legend = FALSE, colour = "black", stroke = 2) +
  ylab("EHS Density (insects/cm)") +
  xlab("Location") +
  coord_cartesian(ylim=c(0,11.5),expand=TRUE) +
  theme_classic(base_size=20) 
print(EHS.box)