# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

rm(list=ls())

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}


#load the hemlock data frame
hemlock <- read_csv(file.path(.get_course_path(), 
                              "Intro_to_R_for_Biology",
                              "Graphing_Grouped_Continuous_Data",
                              "hemlock.csv"),
                    col_types = cols(
                      Location = col_factor(), 
                      SamplingDate = col_date(format = "%m/%d/%Y"),
                      SampleSeason = col_factor(),
                      infest = col_factor()))
