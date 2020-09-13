hemlocks <- read_csv("hemlock_diam.csv", col_types = cols(location = col_factor(), date = col_date(format = "%m/%d/%Y")))

hemlocks.r <- hemlocks %>% dplyr::filter(!is.na(height))

tree.size <- ggplot(data=hemlocks.r, aes(x=log(diameter), y=log(height), color=location)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  xlab("log(Diameter (cm))") +
  ylab("log(Height (cm))") +
  coord_cartesian(expand=TRUE) +
  theme_classic(base_size=20) 
print(tree.size)
