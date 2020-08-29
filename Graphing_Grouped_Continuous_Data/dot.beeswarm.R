#Dot plot with mean and beeswarm jitter
dot.beeswarm <- ggplot(data = small, aes(x= Location, y = EHS))+ 
  geom_beeswarm(aes(x= Location, y = EHS, fill=Location), shape=21, size=3, 
                alpha=0.75, cex=2.25 , priority = "ascending", show.legend=FALSE) +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", 
               width = 0.5, size = 0.75, na.rm = TRUE, 
               show.legend = FALSE, colour = "black") +
  ylab("EHS Density (insects/cm)") +
  xlab("Location") +
  coord_cartesian(expand=TRUE) +
  theme_classic(base_size=20) +
  theme(legend.position="none")
print(dot.beeswarm)



