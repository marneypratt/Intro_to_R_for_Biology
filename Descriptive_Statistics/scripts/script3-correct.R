##Below is a script that will take the hemlocks dataset then will summarize the following
##mean, standard deviation (=sd), median, interquartile range (IQR), and number of observations (=n)

##the structure of the argument in the summarize() function is that you give the output a name 
## then you say what function gives the output (mean(), median() etc) and put the variable of interest
## within the parentheses 

##the print code at the bottom is there so that the code in this script will be run in the console

##we have added the na.rm=TRUE argument to each function within summarize() to tell summarize to 
# ignore the missing values for that calculation

#We also had to change the function to sum to count the rows in the height variable that did not have NA's

#You don't need to change anything in this code, go ahead and type submit() in the console.

hemlocks %>% 
  summarize(Mean = mean(height, na.rm=TRUE),
            SD = sd(height, na.rm=TRUE),
            Median = median(height, na.rm=TRUE), 
            IQR = IQR(height, na.rm=TRUE), 
            N = sum(!is.na(height))) %>%
print