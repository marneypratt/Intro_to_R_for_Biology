g.hist <- ggplot(data = hemlock, aes(x = EHS, fill=Location))+ 
  geom_histogram(binwidth = 0.4, color = "white", show.legend = FALSE) +
  facet_grid(Location ~ .) +
  xlab("EHS Density (insects/cm)") +
  ylab("Count") +
  coord_cartesian(expand=TRUE) +
  theme_classic(base_size=14) 
print(g.hist)