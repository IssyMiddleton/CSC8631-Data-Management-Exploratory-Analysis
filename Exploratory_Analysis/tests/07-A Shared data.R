summary(enrol)
Shared_Table = filter(enrol, Shared_Info > 0)
Shared_Table_rows = nrow(Shared_Table)

Amount_Shared_by_survey = table(Shared_Table$survey, Shared_Table$Shared_Info)

course_numbers = summary(enrol$survey)
mean(course_numbers)
sd(course_numbers)

Shared_Table
