## additional pre-processing to create additional columns and tables for analysis

## add new columns for how much data students shared
enrol$Shared_Gender <- 1
enrol$Shared_Gender <- ifelse (enrol$gender == "Unknown", 0, 1)

enrol$Shared_Age_Range <- 1
enrol$Shared_Age_Range <- ifelse (enrol$age_range == "Unknown", 0, 1)

enrol$Shared_Emp_Status <- 1
enrol$Shared_Emp_Status <- ifelse (enrol$employment_status == "Unknown", 0, 1)

enrol$Shared_Emp_Area <- 1
enrol$Shared_Emp_Area <- ifelse (enrol$employment_area == "Unknown", 0, 1)

enrol$Shared_Highest_Ed <- 1
enrol$Shared_Highest_Ed <- ifelse (enrol$highest_education_level == "Unknown", 0, 1)

enrol$Shared_Info = (enrol$Shared_Gender + enrol$Shared_Age_Range + enrol$Shared_Emp_Status + enrol$Shared_Emp_Area + enrol$Shared_Highest_Ed)

enrol$Survey_Total = ifelse(enrol$survey == 1, count1unique, ifelse (enrol$survey == 2, count2unique, 
          ifelse (enrol$survey == 3, count3unique, ifelse (enrol$survey == 4, count4unique, 
                          ifelse (enrol$survey == 5, count5unique,
                                  ifelse (enrol$survey == 6, count6unique, count7unique))))))
  