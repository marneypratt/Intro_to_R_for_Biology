##Below is a script that will take the hemlocks dataset then will summarize the following
##mean, standard deviation (=sd), median, interquartile range (IQR), and number of observations (=n)

##the structure of the argument in the summarize() function is that you give the output a name 
## then you say what function gives the output (mean(), median() etc) and put the variable of interest
## within the parentheses 

##the print code at the bottom is there so that the code in this script will be run in the console

##replace the diameter variable with height and then save this script then type submit() in the console

hemlocks %>% 
  summarize(Mean = mean(height),
            SD = sd(height),
            Median = median(height), 
            IQR = IQR(height), 
            N=n()) %>%
print