#Filter for one semester Spring 2019
hemlock$SamplingDate <- as.Date(hemlock$SamplingDate, "%m/%d/%Y")
small <- hemlock %>% filter (SamplingDate > as.Date("2018-11-20"))

#Dot plot with mean
dot.mean <-  ggplot(data = small, aes(x= Location, y = EHS))+ 
  geom_point(aes(x= Location, y = EHS, fill = Location), shape=21, size=3, alpha=0.75,
             position=position_jitterdodge(jitter.width=0.8), show.legend=FALSE) +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", 
               width = 0.5, size = 0.75, na.rm = TRUE, show.legend = FALSE, colour = "black") +
  ylab("EHS Density (insects/cm)") +
  xlab("Location") +
  coord_cartesian(expand=TRUE) +
  theme_classic(base_size=20) +
  theme(legend.position="none")
print(dot.mean)