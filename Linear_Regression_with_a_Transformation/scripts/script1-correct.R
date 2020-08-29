#Note that everything after hashtags (=number symbol) is ignored by R and present as a comment

#Below is a script where we will calculate the average annual twig growth and EHS density
# for each tree

#You do not need to make any changes in the script.

#When you are done examining the code, type submit() and then press enter in the console

hemlocks.sum <- hemlocks %>% 
  group_by(Location, Tag) %>% 
  dplyr::summarize(
    mean_ATG = mean(ATG_cm),
    mean_EHS = mean(all.EHS_density),
    N = n())
