##before the summarize function, add in the group_by() function and use size.group as the argument

##When you are done, save this script then type submit() in the console

hemlocks %>% 
  summarize(Mean = mean(diameter),
            SD = sd(diameter),
            Median = median(diameter), 
            IQR = IQR(diameter), 
            N=n()) %>%
print