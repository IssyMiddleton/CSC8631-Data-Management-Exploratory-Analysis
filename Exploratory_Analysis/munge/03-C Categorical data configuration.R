# Preprocessing script for analysis

#make categorical data where the columns are not going to be used for maths calculations
enrol$gender = as.factor(enrol$gender)
enrol$age_range = as.factor(enrol$age_range)
enrol$detected_country = as.factor(enrol$detected_country)
enrol$highest_education_level = as.factor(enrol$highest_education_level)
enrol$employment_status = as.factor(enrol$employment_status)
enrol$employment_area = as.factor(enrol$employment_area)
enrol$survey = as.factor(enrol$survey)
