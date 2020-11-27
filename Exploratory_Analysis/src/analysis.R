library('ProjectTemplate')
load.project()

Shared_Gender = ggplot(shared_g, aes(x=gender, fill = employment_status))+
  theme_bw() +
  geom_bar() +
  labs(y = "Count of Survey Responses", x = "Gender", fill = "Employment Status",
       title = "Students that provided gender", subtitle = " ")
  ggsave(file.path('graphs', 'Shared_Gender.pdf'))

Shared_Gender_by_Age = ggplot(shared_g, aes(x=gender, fill = age_range))+
  theme_bw() +
  geom_bar() +
  labs(y = "Survey Response", x = "Gender", fill = "Age Range",
       title = "Students that provided gender and age range", subtitle = " ")
  ggsave(file.path('graphs', 'Shared_Gender_by_Age.pdf'))

Shared_Gender_by_Emp_by_Survey = ggplot(shared_g, aes(x=gender, fill = employment_status))+
  theme_bw() +
  geom_bar() +
  facet_wrap(~ survey) +
  labs(y = "Survey Response", x = "Gender", fill = "Employment Status",
       title = "Students that provided gender and employment status", subtitle = " ")
  ggsave(file.path('graphs', 'Shared_Gender_by_Emp_by_Survey.pdf'))

Shared_Gender_by_Age_by_Survey = ggplot(shared_g, aes(x=gender, fill = age_range))+
  theme_bw() +
  geom_bar() +
  facet_wrap(~ survey) +
  labs(y = "Survey Response", x = "Gender", fill = "Age Range",
       title = "Students that provided gender and age", subtitle = " ")
  ggsave(file.path('graphs', 'Shared_Gender_by_Age_by_Survey.pdf'))
  
Shared_MF_by_Age_by_Survey = ggplot(shared_mf, aes(x=gender, fill = age_range))+
    theme_bw() +
    geom_bar() +
    facet_wrap(~ survey) +
    labs(y = "Survey Response", x = "Gender", fill = "Age Range",
         title = "Male or female students that provided age range", subtitle = " ")
  ggsave(file.path('graphs', 'Male_Female_by_Age_by_Survey.pdf'))
  
Shared_MF_by_Age = ggplot(shared_mf, aes(x=gender, fill = age_range))+
    theme_bw() +
    geom_bar() +
    labs(y = "Survey Response", x = "Gender", fill = "Age Range",
         title = "Male or female students that provided age range", subtitle = " ")
  ggsave(file.path('graphs', 'Male_Female_by_Age.pdf'))
  

Shared_Age_and_Gender_by_Year = ggplot(shared_mf, aes(x=gender, fill = age_range))+
    theme_bw() +
    geom_bar() +
    facet_wrap(~ year) +
    labs(y = "Survey Response", x = "Gender", fill = "Age Range",
         title = "Male or female students that provided age range", subtitle = " ")
  ggsave(file.path('graphs', 'Male_Female_by_Age_by_Year.pdf'))

Annual_Survey_Response = ggplot(enrol, aes(x=year, fill = survey))+
    theme_bw() +
    geom_bar(stat = "count") +
  geom_text(aes(label=..count..),stat="count",position=position_stack(0.5)) +
    labs(y = "Survey Responses", x = "Year", fill ="Survey No.", title = "Survey responses by course and year", subtitle = " ")
  ggsave(file.path('graphs', 'Annual_Survey_Response.png'), width = 2, height = 2)
  
  
Survey_Response = ggplot(enrol, aes(x=survey))+
    theme_bw() +
    geom_bar(colour ="steelblue", fill = "steelblue")  +
  geom_text(aes(label=..count..),stat="count",position=position_stack(0.5)) +
    labs(y = "Survey Responses", x = "Survey", title = "Enrolment surveys by course", subtitle = " ")
  ggsave(file.path('graphs', 'Survey_Response_By_Course.png'), width = 2, height = 2)
  
Year_Response = ggplot(enrol, aes(x=year))+
    theme_bw() +
    geom_bar(colour ="steelblue", fill = "steelblue")  +
    geom_text(aes(label=..count..),stat="count",position=position_stack(0.5)) +
    labs(y = "Survey Responses", x = "Year", title = "Enrolment surveys by year", subtitle = " ")
  ggsave(file.path('graphs', 'Survey_Response_By_Year.png'), width = 2, height = 2)
  
  
Employment_Area_Total = ggplot(shared_ea, aes(x=survey, fill = employment_area))+
  theme_bw() +
  geom_bar() +
  labs(y = "Survey Response", x = "Intake/Survey", fill = "Employment Area", 
       title = "Students that provided employment area", subtitle = " ")
  ggsave(file.path('graphs', 'Survey_Responses_on_Employment_Area.pdf'))

Employment_Area_by_Year = ggplot(shared_ea, aes(x=year, fill = employment_area))+
  theme_bw() +
  geom_bar() +
  labs(y = "Survey Response", x = "Year", fill = "Employment Area", 
       title = "Students that provided information on employment area", subtitle = " ")
  ggsave(file.path('graphs', 'Survey_Responses_on_Employment_Area_by_Year.pdf'))

Employment_Status_Total = ggplot(shared_es, aes(x=survey, fill = employment_status))+
  theme_bw() +
  geom_bar() +
  labs(y = "Survey Response", x = "Intake/Survey", fill = "Employment Area", 
       title = "Students that Provided Information on employment status", subtitle = " ")
  ggsave(file.path('graphs', 'Survey_Responses_on_Employment_Status.pdf'))
                
Employment_Status_by_Year = ggplot(shared_es, aes(x=year, fill = employment_status))+
  theme_bw() +
  geom_bar() +
  labs(y = "Survey Response", x = "Year", fill = "Employment Status", 
       title = "Students that provided information on employment status", subtitle = " ")
  ggsave(file.path('graphs', 'Survey_Responses_on_Employment_Status_by_Year.pdf'))
       
Not_Provided = ggplot(notshared_g, aes(x=survey, fill = age_range))+
  theme_bw() +
  geom_bar() +
  labs(y = "Survey Response", x = "Intake/Survey", fill = "Age Range", 
       title = "Students that didn't provided information on gender", subtitle = " ")

Percent = plot(prop.table(table(enrol$gender)))

Shared_Info = ggplot(enrol, aes(x=Shared_Info))+
  theme_bw() +
  geom_bar(colour ="steelblue", fill = "steelblue") +
  geom_text(aes(label=..count..),stat="count",position=position_stack(0.5)) +
  scale_x_continuous(breaks = c(0:5),labels = factor(0:5)) +
  labs(y = "Survey Responses", x = "No. of details shared", title = "Amount of information shared by students", subtitle = " ")
ggsave(file.path('graphs', 'Shared_Info.png'), width = 3, height = 3)

course_numbers = summary(enrol$survey)

