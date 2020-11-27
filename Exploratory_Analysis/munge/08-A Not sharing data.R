# pre-processing script to identify students not willing to share data
Not_Shared_Table = filter(enrol, Shared_Info == 0)
Not_Shared_Table_rows = nrow(Not_Shared_Table)

Amount_Not_Shared_by_survey = table(Not_Shared_Table$survey, Not_Shared_Table$Shared_Info)

#filter student records that shared data by survey
Not_Shared1 = filter(Not_Shared_Table, survey == 1)
Not_Shared2 = filter(Not_Shared_Table, survey == 2)
Not_Shared3 = filter(Not_Shared_Table, survey == 3)
Not_Shared4 = filter(Not_Shared_Table, survey == 4)
Not_Shared5 = filter(Not_Shared_Table, survey == 5)
Not_Shared6 = filter(Not_Shared_Table, survey == 6)
Not_Shared7 = filter(Not_Shared_Table, survey == 7)

# count the students that shared data by survey
Count_Not_Shared1 = nrow(Not_Shared1)
Count_Not_Shared2 = nrow(Not_Shared2)
Count_Not_Shared3 = nrow(Not_Shared3)
Count_Not_Shared4 = nrow(Not_Shared4)
Count_Not_Shared5 = nrow(Not_Shared5)
Count_Not_Shared6 = nrow(Not_Shared6)
Count_Not_Shared7 = nrow(Not_Shared7)

#create user-defined function to calculate percentage
percent <- function(x, digits = 2, format = "f", ...) {
  paste0(formatC(x * 100, format = format, digits = digits, ...), "%")
}

#calculate the percentage of students that shared data by survey (1 to 7)
PercentNot_Shared1 = percent(Count_Not_Shared1/count1unique)
PercentNot_Shared2 = percent(Count_Not_Shared2/count2unique)
PercentNot_Shared3 = percent(Count_Not_Shared3/count3unique)
PercentNot_Shared4 = percent(Count_Not_Shared4/count4unique)
PercentNot_Shared5 = percent(Count_Not_Shared5/count5unique)
PercentNot_Shared6 = percent(Count_Not_Shared6/count6unique)
PercentNot_Shared7 = percent(Count_Not_Shared7/count7unique)

#filter student records by the amount of data they shared
Not_SharedInfo0 = filter(Not_Shared_Table, Shared_Info == 0)

# count the students that shared data by survey
Count_NotShared_Info0 = nrow(Not_SharedInfo0)

#calculate the percentage of students didn't share any data
NoSharing = (nrow(enrol) - Shared_Table_rows)
PercentNoSharing = percent(NoSharing/(nrow(enrol)))

#
