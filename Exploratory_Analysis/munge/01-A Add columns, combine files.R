# Preprocessing script to add two additional columns (survey number and the year
# of enrolment) and combine the files into a single dataframe

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

# remove duplicate learner_id rows
enrol = allfiles[!duplicated(allfiles$learner_id), ]
repeated = allfiles[duplicated(allfiles$learner_id),]
enrolcount = nrow(enrol)
repeatedcount = nrow(repeated)

#convert the enrolled_at column of characters to a date formatted column
enrol$enroldate = as.POSIXct(c(enrol$enrolled_at))
enrol$enroldate = as.Date(enrol$enroldate)
firststudent = min(enrol$enroldate)
laststudent = max(enrol$enroldate)
coursedurationdays = difftime(laststudent, firststudent, units = "day")
coursedurationweeks = difftime(laststudent, firststudent, units = "weeks")

#generate a date that will work in the RMarkdown report
firststudentreport <- format(firststudent, format = "%d %B %Y")
laststudentreport <- format(laststudent,format = "%d %B %Y")

#unique count for each survey
cyber1unique = filter(enrol, survey == 1)
count1unique = nrow(cyber1unique)

cyber2unique = filter(enrol, survey == 2)
count2unique = nrow(cyber2unique)

cyber3unique = filter(enrol, survey == 3)
count3unique = nrow(cyber3unique)

cyber4unique = filter(enrol, survey == 4)
count4unique = nrow(cyber4unique)

cyber5unique = filter(enrol, survey == 5)
count5unique = nrow(cyber5unique)

cyber6unique = filter(enrol, survey == 6)
count6unique = nrow(cyber6unique)

cyber7unique = filter(enrol, survey == 7)
count7unique = nrow(cyber7unique)

#first and last students for each intake, when duplicates have been removed
cyber1firststudentunique = min(cyber1unique$enroldate)
cyber1laststudentunique = max(cyber1unique$enroldate)
cyber1durationdaysunique = difftime(cyber1laststudentunique, cyber1firststudentunique, units = "day")
cyber1firststudentreport <- format(cyber1firststudentunique, format = "%d %B %Y")
cyber1laststudentreport <- format(cyber1laststudentunique,format = "%d %B %Y")

cyber2firststudentunique = min(cyber2unique$enroldate)
cyber2laststudentunique = max(cyber2unique$enroldate)
cyber2durationdaysunique = difftime(cyber2laststudentunique, cyber2firststudentunique, units = "day")
cyber2firststudentreport <- format(cyber2firststudentunique, format = "%d %B %Y")
cyber2laststudentreport <- format(cyber2laststudentunique,format = "%d %B %Y")

cyber3firststudentunique = min(cyber3unique$enroldate)
cyber3laststudentunique = max(cyber3unique$enroldate)
cyber3durationdaysunique = difftime(cyber3laststudentunique, cyber3firststudentunique, units = "day")
cyber3firststudentreport <- format(cyber3firststudentunique, format = "%d %B %Y")
cyber3laststudentreport <- format(cyber3laststudentunique,format = "%d %B %Y")

cyber4firststudentunique = min(cyber4unique$enroldate)
cyber4laststudentunique = max(cyber4unique$enroldate)
cyber4durationdaysunique = difftime(cyber4laststudentunique, cyber4firststudentunique, units = "day")
cyber4firststudentreport <- format(cyber4firststudentunique, format = "%d %B %Y")
cyber4laststudentreport <- format(cyber4laststudentunique,format = "%d %B %Y")

cyber5firststudentunique = min(cyber5unique$enroldate)
cyber5laststudentunique = max(cyber5unique$enroldate)
cyber5durationdaysunique = difftime(cyber5laststudentunique, cyber5firststudentunique, units = "day")
cyber5firststudentreport <- format(cyber5firststudentunique, format = "%d %B %Y")
cyber5laststudentreport <- format(cyber5laststudentunique,format = "%d %B %Y")

cyber6firststudentunique = min(cyber6unique$enroldate)
cyber6laststudentunique = max(cyber6unique$enroldate)
cyber6durationdaysunique = difftime(cyber6laststudentunique, cyber6firststudentunique, units = "day")
cyber6firststudentreport <- format(cyber6firststudentunique, format = "%d %B %Y")
cyber6laststudentreport <- format(cyber6laststudentunique,format = "%d %B %Y")

cyber7firststudentunique = min(cyber7unique$enroldate)
cyber7laststudentunique = max(cyber7unique$enroldate)
cyber7durationdaysunique = difftime(cyber7laststudentunique, cyber7firststudentunique, units = "day")
cyber7firststudentreport <- format(cyber7firststudentunique, format = "%d %B %Y")
cyber7laststudentreport <- format(cyber7laststudentunique,format = "%d %B %Y")


