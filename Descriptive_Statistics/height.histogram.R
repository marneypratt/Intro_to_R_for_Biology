
hemlocks.h <- hemlocks %>% filter(!is.na(height))

hist2 <- ggplot(data = hemlocks.h, aes(x = height))+ 
  geom_histogram(binwidth = 30, color = "white", fill= "#00BFC4") +
  xlab("Height (cm)") +
  ylab("Count") +
  coord_cartesian(expand=FALSE) +
  theme_classic(base_size=20) 
print(hist2)