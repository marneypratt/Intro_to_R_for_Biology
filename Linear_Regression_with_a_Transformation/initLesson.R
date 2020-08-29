# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

#clear out the memory
rm(list=ls())


.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}


#load the hemlock data frame
hemlocks <- read_csv(file.path(.get_course_path(), 
                               "Intro_to_R_for_Biology",
                               "Linear_Regression_with_a_Transformation",
                               "hemlock_reg.csv"), 
                     col_types = cols(
                       Location = col_factor(),
                       SamplingDate = col_date(format = "%m/%d/%Y")
                       ))

