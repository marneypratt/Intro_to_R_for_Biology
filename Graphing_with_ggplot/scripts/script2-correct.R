# Replace the blanks with the proper code

# the dataset we are using is hemlocks.h

# the variables you are graphing are diameter (=independent) and height (=dependent)

# When you are done, save this script and type submit() in the console


g1 <- ggplot(data = hemlocks.h, aes(x = diameter, y = height)) +
      geom_point()

print(g1)