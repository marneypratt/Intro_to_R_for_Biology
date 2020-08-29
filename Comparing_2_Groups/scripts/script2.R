# You don't need to change anything for this code, so just type submit() in the console

# Histogram of heights for males and females
histogram <- ggplot(data = davis, aes(x = height, fill= sex))+ 
  geom_histogram(binwidth = 2, color = "white") +
  scale_fill_discrete(name = "Sex", labels = c("Female", "Male")) +
  facet_grid(rows = vars(sex)) +
  xlab("Height (cm)") +
  ylab("Count") +
  coord_cartesian(expand=FALSE) +
  theme_classic(base_size=20) +
  theme(strip.text = element_blank())

print(histogram)



