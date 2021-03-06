#sample size
sample_size = hemlock %>% group_by(Location) %>% summarize (num=n())

#violin plot with box plots and sample sizes
EHS.violin <- hemlock %>% 
  left_join(sample_size, by="Location") %>% 
  mutate(myaxis = paste0(Location, "\n", "n=", num)) %>% 
  ggplot(aes(x=myaxis, y=EHS, fill=Location)) +
    geom_violin(width=1.4) +
    geom_boxplot(width=0.1, color="black", alpha=0.8) +
    ylab("EHS Density (insects/cm)") +
    xlab("Location") +
    theme_classic(base_size=18) +
    theme(legend.position="none")

suppressWarnings(print(EHS.violin))
