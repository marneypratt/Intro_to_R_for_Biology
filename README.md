# Intro to R for Biology Swirl Course

### by Marney Pratt

### Last updated on August 29, 2020

This webpage details how to download and install the **Intro to R for Biology** Swirl course. Please visit the [Swirl website](https://swirlstats.com/) for more information about how to install or develop interactive Swirl lessons.<br>

Please feel free to download and use the **Intro to R for Biology** Swirl course for educational purposes, no commercial uses are allowed.

## Install Swirl and Intro to R for Biology Course

Install the swirl package and the **Intro to R for Biology** swirl course.

1. The first time you use swirl, you will have to install the package. You will only need to do this once. It is similar to downloading an app to your phone or computer. To install swirl, type this code into the RStudio console and press Enter:

`install.packages("swirl")`

Be patient, it sometimes takes a little while for the package to download and install.

Note that there may be other packages you might need to install. For example, when I recently installed swirl, I had to also install the RCurl package to get swirl to load properly. It is also a good idea to make sure you have the most up to date version of the tidyverse package since we will use many tidyverse functions in the Intro to R for Biology swirl lessons. To install additional packages, use the `install.packages()` function (make sure to put the package name in quotes within the parentheses). Aslo note that you can install more than one package at once.  For example, to install RCurl and the tidyverse, use the following code:

`install.packages("RCurl","tidyverse")`

2. Once the swirl package is installed (along with any other packages you might need), then you need to load swirl. This is similar to opening an app on your phone or computer. You will need to load the swirl package anytime you start a new session of R in RStudio. To load swirl, type this code into the RStudio console and press Enter:

`library(swirl)`

3. After swirl loads, you will need to install the **Intro to R for Biology** Swirl course by typing the following code into the console and pressing Enter:

`install_course_github("marneypratt", "Intro_to_R_for_Biology")`

4. Next, type this code into the RStudio console and press Enter:

`swirl()`

5. Swirl will ask you to give a name (it will use this to remember you from session to session, nothing is shared publicly) and then it will give a few other prompts to help you learn how swirl works.  Follow the instructions until you get to a prompt that asks you to "Please choose a course, or type 0 to exit swirl." At this prompt, select the option next to "Intro to R for Biology".

6. Once you are in the course, you will see several lessons. Start with "1: Basics" or choose the lesson your instructor has told you to choose.


Here is a list of the lessons available

1. Basics
2. Getting_Data_into_R
3. Working_with_Data
4. Descriptive_Statistics
5. Graphing_with_ggplot
6. Graphing_Grouped_Continuous_Data
7. Comparing_2_Groups
8. Linear_Regression
9. Linear_Regression_with_a_Transformation

Note that this course uses the [Tidyverse](https://www.tidyverse.org/) especially the readr, dplyr, and ggplot2 packages as well as ggfortify (an extension for ggplot2).

A few lessons use packages the car and carData packages from [An R COmpanion to Applied Regression by John Fox and Sanford Weissberg](https://socialsciences.mcmaster.ca/jfox/Books/Companion/index.html)


Click here to open the [Resources for the Intro to R for Biology course webpage](https://docs.google.com/document/d/e/2PACX-1vTRMYrJYm4DtGURF6voY0AwhFFGnIvjYleoC5qgH5uVzRmCNXO9EJuKLK5ihvH3rMvWtnuPZ_7qU13i/pub) and keep that open while you work through the lessons.



## Enjoy Learning how to Use R!
