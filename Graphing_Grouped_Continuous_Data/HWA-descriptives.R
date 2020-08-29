hemlock.sum <- hemlock %>%
  group_by(Location) %>%
  summarise(mean = mean(HWA), 
            sd = sd(HWA), 
            n = n()) %>%
  mutate(sem = sd/(sqrt(n)))
print(hemlock.sum)