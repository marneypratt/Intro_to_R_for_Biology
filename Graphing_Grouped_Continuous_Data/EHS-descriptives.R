EHS.sum <- hemlock %>%
  group_by(Location) %>%
  summarise(mean = mean(EHS), 
            sd = sd(EHS), 
            median = median(EHS),
            IQR = IQR(EHS),
            n = n()) %>%
  mutate(sem = sd/(sqrt(n)))
print(EHS.sum)