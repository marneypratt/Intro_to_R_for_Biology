##Note that everything after hashtags is ignored by R and present as a comment

##Below is a script that will take the hemlocks dataset then will summarize the following
##mean, standard deviation (=sd), median, interquartile range (IQR), and number of observations (=n)

##the structure of the argument in the summarize() function is that you give the output a name 
## then you say what function gives the output (mean(), median() etc) and put the variable of interest
## within the parentheses 

##the print code at the bottom is there so that the code in this script will be run in the console

##You don't need to change anything for this code, so just type submit() in the console

hemlocks %>% 
  summarize(Mean = mean(diameter),
            SD = sd(diameter),
            Median = median(diameter), 
            IQR = IQR(diameter), 
            N=n()) %>%
print