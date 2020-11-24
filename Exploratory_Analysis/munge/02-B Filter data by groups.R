# Preprocessing script to filter the master 'enrol' dataframe into groups for analysis

#filter enrol dataframe to show survey responses where no details for gender was provided
notshared_g = filter(enrol, gender == "Unknown")

#filter enrol dataframe to show survey responses where no details for employment status was provided
notshared_es = filter(enrol, employment_status == "Unknown")

#filter enrol dataframe to show survey responses where no details for employment area was provided
notshared_ea = filter(enrol, employment_area == "Unknown")

#filter enrol dataframe to show survey responses where no details for age range was provided
notshared_a = filter(enrol, age_range == "Unknown")

#filter enrol dataframe to show survey responses where no details for highest education level was provided 
notshared_h = filter(enrol, highest_education_level == "Unknown")

#filter enrol dataframe to show survey responses where details for gender were provided
shared_g = filter(enrol, gender == "male" | gender == "female" | gender == "nonbinary" | gender == "other")

#filter enrol dataframe to show survey responses where employment status is provided (not unknown)
shared_es = filter(enrol, employment_status != "Unknown")

#filter enrol dataframe to show survey responses where employment area is provided (not unknown)
shared_ea = filter(enrol, employment_area != "Unknown")

#filter enrol dataframe to show survey responses where age range is provided (not unknown)
shared_a = filter(enrol, age_range != "Unknown")

#filter enrol dataframe to show survey responses where highest education level is provided (not unknown)
shared_h = filter(enrol, highest_education_level != "Unknown")

