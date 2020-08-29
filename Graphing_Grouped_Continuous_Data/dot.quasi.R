#Dot plot with mean and quasirandom jitter
dot.quasi <- ggplot(data = small, aes(x= Location, y = EHS))+ 
  geom_quasirandom(aes(x= Location, y = EHS, fill=Location), shape=21, size=3, 
                   alpha=0.75, width=0.2, show.legend=FALSE) +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", 
               width = 0.5, size = 0.75, na.rm = TRUE, 
               show.legend = FALSE, colour = "black") +
  ylab("EHS Density (insects/cm)") +
  xlab("Location") +
  coord_cartesian(expand=TRUE) +
  theme_classic(base_size=20) +
  theme(legend.position="none")
print(dot.quasi)