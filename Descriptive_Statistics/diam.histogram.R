hist <- ggplot(data = hemlocks, aes(x = diameter))+ 
  geom_histogram(binwidth = 0.8, color = "white", fill= "#00BFC4") +
  xlab("Diameter (cm)") +
  ylab("Count") +
  coord_cartesian(expand=FALSE) +
  theme_classic(base_size=20) 
print(hist)