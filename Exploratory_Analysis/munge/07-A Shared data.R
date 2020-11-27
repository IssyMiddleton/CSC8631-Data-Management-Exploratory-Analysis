# pre-processing scripts to identify students willing to share data 
Shared_Table = filter(enrol, Shared_Info > 0)
Shared_Table_rows = nrow(Shared_Table)

Amount_Shared_by_survey = table(Shared_Table$survey, Shared_Table$Shared_Info)

course_numbers = summary(enrol$survey)
mean(course_numbers)
sd(course_numbers)

AveSharedItems = mean(enrol$Shared_Info)
AveSharedItemsformatted = format(AveSharedItems, digits=2, nsmall=2)

AveSharedItemsbySharing = mean(Shared_Table$Shared_Info)
AveSharedItemsbySharingformatted = format(AveSharedItemsbySharing, digits=2, nsmall=2)


#filter student records that shared data by survey
Shared1 = filter(Shared_Table, survey == 1)
Shared2 = filter(Shared_Table, survey == 2)
Shared3 = filter(Shared_Table, survey == 3)
Shared4 = filter(Shared_Table, survey == 4)
Shared5 = filter(Shared_Table, survey == 5)
Shared6 = filter(Shared_Table, survey == 6)
Shared7 = filter(Shared_Table, survey == 7)

# count the students that shared data by survey
Count_Shared1 = nrow(Shared1)
Count_Shared2 = nrow(Shared2)
Count_Shared3 = nrow(Shared3)
Count_Shared4 = nrow(Shared4)
Count_Shared5 = nrow(Shared5)
Count_Shared6 = nrow(Shared6)
Count_Shared7 = nrow(Shared7)

#calculate average amount of data shared
Amount_Shared1 = (sum(Shared1$Shared_Info)/Count_Shared1)
Amount_Shared2 = (sum(Shared2$Shared_Info)/Count_Shared2)
Amount_Shared3 = (sum(Shared3$Shared_Info)/Count_Shared3)
Amount_Shared4 = (sum(Shared4$Shared_Info)/Count_Shared4)
Amount_Shared5 = (sum(Shared5$Shared_Info)/Count_Shared5)
Amount_Shared6 = (sum(Shared6$Shared_Info)/Count_Shared6)
Amount_Shared7 = (sum(Shared7$Shared_Info)/Count_Shared7)

Amount_Shared1 = format(Amount_Shared1, digits=2, nsmall=2)
Amount_Shared2 = format(Amount_Shared2, digits=2, nsmall=2)
Amount_Shared3 = format(Amount_Shared3, digits=2, nsmall=2)
Amount_Shared4 = format(Amount_Shared4, digits=2, nsmall=2)
Amount_Shared5 = format(Amount_Shared5, digits=2, nsmall=2)
Amount_Shared6 = format(Amount_Shared6, digits=2, nsmall=2)
Amount_Shared7 = format(Amount_Shared7, digits=2, nsmall=2)

#create user-defined function to calculate percentage
percent <- function(x, digits = 2, format = "f", ...) {
  paste0(formatC(x * 100, format = format, digits = digits, ...), "%")
}

#calculate the percentage of students that shared data by survey (1 to 7)
Percent1 = percent(Count_Shared1/count1unique)
Percent2 = percent(Count_Shared2/count2unique)
Percent3 = percent(Count_Shared3/count3unique)
Percent4 = percent(Count_Shared4/count4unique)
Percent5 = percent(Count_Shared5/count5unique)
Percent6 = percent(Count_Shared6/count6unique)
Percent7 = percent(Count_Shared7/count7unique)

#filter student records by the amount of data they shared
Info1 = filter(Shared_Table, Shared_Info == 1)
Info2 = filter(Shared_Table, Shared_Info == 2)
Info3 = filter(Shared_Table, Shared_Info == 3)
Info4 = filter(Shared_Table, Shared_Info == 4)
Info5 = filter(Shared_Table, Shared_Info == 5)

# count the students that shared data by survey
Count_Shared_Info1 = nrow(Info1)
Count_Shared_Info2 = nrow(Info2)
Count_Shared_Info3 = nrow(Info3)
Count_Shared_Info4 = nrow(Info4)
Count_Shared_Info5 = nrow(Info5)

#calculate the proportion of data that was shared by students (1 to 5)
PercentInfo1 = percent(Count_Shared_Info1/Shared_Table_rows)
PercentInfo2 = percent(Count_Shared_Info2/Shared_Table_rows)
PercentInfo3 = percent(Count_Shared_Info3/Shared_Table_rows)
PercentInfo4 = percent(Count_Shared_Info4/Shared_Table_rows)
PercentInfo5 = percent(Count_Shared_Info5/Shared_Table_rows)

#calculate the percentage of students did share data
PercentSharing = percent(Shared_Table_rows/(nrow(enrol)))
