FLH.data <- hemlock %>% filter(Location == "FLH")

FLH.hist <- ggplot(data = FLH.data, aes(x = HWA))+ 
  geom_histogram(binwidth = 0.4, color = "white", fill = "steelblue", show.legend = FALSE) +
  xlab("HWA Density (insects/cm)") +
  ylab("Count") +
  coord_cartesian(expand=TRUE) +
  theme_classic(base_size=14) 
print(FLH.hist)