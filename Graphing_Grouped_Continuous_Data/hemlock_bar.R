g.bar <- ggplot(hemlock.sum, aes(x=Location,y=mean, fill))+
  geom_bar(stat="identity",  width = 0.5, show.legend=FALSE, fill = "steelblue")+
  geom_errorbar(aes(ymin=mean-sem, ymax=mean+sem), width=0.1, size=1) +
  ylab("HWA Density (insects/cm)") +
  xlab("Location") +
  coord_cartesian(xlim = c(0.5,4.5), expand=FALSE) +
  theme_classic(base_size=16) 
print(g.bar)
