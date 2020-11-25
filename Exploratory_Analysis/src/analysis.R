library('ProjectTemplate')
load.project()

Shared_Gender = ggplot(shared_g, aes(x=gender, fill = employment_status))+
  theme_bw() +
  geom_bar() +
  labs(y = "Count of Survey Responses", x = "Gender", fill = "Employment Status",
       title = "Cyber Security Students that Provided Information on Gender")
  ggsave(file.path('graphs', 'Shared_Gender.pdf'))

Shared_Gender_by_Age = ggplot(shared_g, aes(x=gender, fill = age_range))+
  theme_bw() +
  geom_bar() +
  labs(y = "Survey Response", x = "Gender", fill = "Age Range",
       title = "Cyber Security Students that Provided Information on Gender by Age")
  ggsave(file.path('graphs', 'Shared_Gender_by_Age.pdf'))

Shared_Gender_by_Emp_by_Survey = ggplot(shared_g, aes(x=gender, fill = employment_status))+
  theme_bw() +
  geom_bar() +
  facet_wrap(~ survey) +
  labs(y = "Survey Response", x = "Gender", fill = "Employment Status",
       title = "Cyber Security Students that Provided Information on Gender by Employment by Survey")
  ggsave(file.path('graphs', 'Shared_Gender_by_Emp_by_Survey.pdf'))

Shared_Gender_by_Age_by_Survey = ggplot(shared_g, aes(x=gender, fill = age_range))+
  theme_bw() +
  geom_bar() +
  facet_wrap(~ survey) +
  labs(y = "Survey Response", x = "Gender", fill = "Age Range",
       title = "Cyber Security Students that Provided Information on Gender by Age by Survey")
  ggsave(file.path('graphs', 'Shared_Gender_by_Age_by_Survey.pdf'))
  
Shared_MF_by_Age_by_Survey = ggplot(shared_mf, aes(x=gender, fill = age_range))+
    theme_bw() +
    geom_bar() +
    facet_wrap(~ survey) +
    labs(y = "Survey Response", x = "Gender", fill = "Age Range",
         title = "Male or Female Cyber Security Students that Provided Age Range by Survey")
  ggsave(file.path('graphs', 'Male_Female_by_Age_by_Survey.pdf'))
  
Shared_MF_by_Age = ggplot(shared_mf, aes(x=gender, fill = age_range))+
    theme_bw() +
    geom_bar() +
    labs(y = "Survey Response", x = "Gender", fill = "Age Range",
         title = "Male or Female Cyber Security Students that Provided Age Range")
  ggsave(file.path('graphs', 'Male_Female_by_Age.pdf'))
  

Shared_Age_and_Gender_by_Year = ggplot(shared_mf, aes(x=gender, fill = age_range))+
    theme_bw() +
    geom_bar() +
    facet_wrap(~ year) +
    labs(y = "Survey Response", x = "Gender", fill = "Age Range",
         title = "Male or Female Cyber Security Students that Provided Age Range")
  ggsave(file.path('graphs', 'Male_Female_by_Age_by_Year.pdf'))
         

Annual_Survey_Response = ggplot(enrol, aes(x=year, fill = survey))+
    theme_bw() +
    geom_bar() +
    labs(y = "Survey", x = "Year", fill ="Survey/Intake No.", title = "Information provided by Survey")
  ggsave(file.path('graphs', 'Annual_Survey_Response.pdf'))
  
Survey_Response = ggplot(enrol, aes(x=survey))+
    theme_bw() +
    geom_bar() +
    labs(y = "Intake Total", x = "Survey", title = "Cyber Students providing survey information")
  ggsave(file.path('graphs', 'Survey_Response.pdf'))
  

Employment_Area_Total = ggplot(shared_ea, aes(x=survey, fill = employment_area))+
  theme_bw() +
  geom_bar() +
  labs(y = "Survey Response", x = "Intake/Survey", fill = "Employment Area", 
       title = "Cyber Security Students that Provided Information on Employment Area")
  ggsave(file.path('graphs', 'Survey_Responses_on_Employment_Area.pdf'))

Employment_Area_by_Year = ggplot(shared_ea, aes(x=year, fill = employment_area))+
  theme_bw() +
  geom_bar() +
  labs(y = "Survey Response", x = "Year", fill = "Employment Area", 
       title = "Cyber Security Students that Provided Information on Employment Area")
  ggsave(file.path('graphs', 'Survey_Responses_on_Employment_Area_by_Year.pdf'))

Employment_Status_Total = ggplot(shared_es, aes(x=survey, fill = employment_status))+
  theme_bw() +
  geom_bar() +
  labs(y = "Survey Response", x = "Intake/Survey", fill = "Employment Area", 
       title = "Cyber Security Students that Provided Information on Employment Status")
  ggsave(file.path('graphs', 'Survey_Responses_on_Employment_Status.pdf'))
                
Employment_Status_by_Year = ggplot(shared_es, aes(x=year, fill = employment_status))+
  theme_bw() +
  geom_bar() +
  labs(y = "Survey Response", x = "Year", fill = "Employment Status", 
       title = "Cyber Security Students that Provided Information on Employment Status")
  ggsave(file.path('graphs', 'Survey_Responses_on_Employment_Status_by_Year.pdf'))
       
Not_Provided = ggplot(notshared_g, aes(x=survey, fill = age_range))+
  theme_bw() +
  geom_bar() +
  labs(y = "Survey Response", x = "Intake/Survey", fill = "Age Range", 
       title = "Cyber Security Students that didn't provided information on Gender")

Percent = plot(prop.table(table(enrol$gender)))
