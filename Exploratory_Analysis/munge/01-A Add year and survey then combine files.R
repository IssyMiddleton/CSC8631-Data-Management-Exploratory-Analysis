# Preprocessing script to add two additional columns (survey number and the year
# of enrolment) and combine the files into a single dataframe entitled allfiles

#add a survey reference by adding a column to reference the intake file number,
#i.e. contents of the first file have a column with the number 1
cyber.security.1_enrolments$survey = 1
cyber.security.2_enrolments$survey = 2
cyber.security.3_enrolments$survey = 3
cyber.security.4_enrolments$survey = 4
cyber.security.5_enrolments$survey = 5
cyber.security.6_enrolments$survey = 6
cyber.security.7_enrolments$survey = 7

#add a column containing year by extracting the first four characters of the 'enrolled_at' column
cyber.security.1_enrolments$year = substr(cyber.security.1_enrolments$enrolled_at, 1,4)
cyber.security.2_enrolments$year = substr(cyber.security.2_enrolments$enrolled_at, 1,4)
cyber.security.3_enrolments$year = substr(cyber.security.3_enrolments$enrolled_at, 1,4)
cyber.security.4_enrolments$year = substr(cyber.security.4_enrolments$enrolled_at, 1,4)
cyber.security.5_enrolments$year = substr(cyber.security.5_enrolments$enrolled_at, 1,4)
cyber.security.6_enrolments$year = substr(cyber.security.6_enrolments$enrolled_at, 1,4)
cyber.security.7_enrolments$year = substr(cyber.security.7_enrolments$enrolled_at, 1,4)

#combine all files together into one dataframe
allfiles = rbind(cyber.security.1_enrolments,cyber.security.2_enrolments,cyber.security.3_enrolments,cyber.security.4_enrolments,cyber.security.5_enrolments,cyber.security.6_enrolments,cyber.security.7_enrolments)

#change data type of year column from character to numeric values
allfiles$year = as.numeric(allfiles$year)
