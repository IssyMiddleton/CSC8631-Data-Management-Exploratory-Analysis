library('ProjectTemplate')
load.project()

#This analysis file generates a series of graphs which are saved in the graphs
#folder. The Overview charts are first, then Gender, Age Range, Employment Area,
#Employment Status and Highest Education

# to check, amend or change the graphs from this file you may need to run the script below.

if (!require("RColorBrewer")) {
  install.packages("RColorBrewer")
  library(RColorBrewer)
}

#Overview Charts used to describe the findings, within the report or presentation

# in report - Insert student plot
# in Overview presentation
Shared_Info = ggplot(enrol, aes(x=Shared_Info))+
  theme_bw() +
  geom_bar(colour ="darkcyan", fill = "darkcyan") +
  geom_text(aes(label=..count..),stat="count",position=position_stack(0.5)) +
  scale_x_continuous(breaks = c(0:5),labels = factor(0:5)) +
  labs(y = "Survey Responses", x = "No. of details shared", title = "Amount of information shared by students")
ggsave(file.path('graphs', 'Shared_Info.pdf'), width = 4, height = 3)
ggsave(file.path('reports/Images', 'Shared_Info.png'), width = 5, height = 3)

# in report - Insert survey response plots
Annual_Survey_Response = ggplot(enrol, aes(x=year, fill = survey))+
  theme_bw() +
  geom_bar(stat = "count") +
  geom_text(aes(label=..count..),stat="count",position=position_stack(0.5)) +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Responses", x = "Year", fill ="Survey No.", title = "Survey responses by course and year")
ggsave(file.path('graphs', 'Annual_Survey_Response.pdf'), width = 4, height = 3)

# in report - Insert survey response plots
Survey_Response = ggplot(enrol, aes(x=survey))+
  theme_bw() +
  geom_bar(colour ="darkcyan", fill = "darkcyan")  +
  geom_text(aes(label=..count..),stat="count",position=position_stack(0.5)) +
  labs(y = "Survey Responses", x = "Survey", title = "Enrolment surveys by course")
ggsave(file.path('graphs', 'Survey_Response_By_Course.pdf'), width = 4, height = 3)

# in report - Insert survey response plots
Year_Response = ggplot(enrol, aes(x=year))+
  theme_bw() +
  geom_bar(colour ="darkcyan", fill = "darkcyan")  +
  geom_text(aes(label=..count..),stat="count",position=position_stack(0.5)) +
  labs(y = "Survey Responses", x = "Year", title = "Enrolment surveys by year")
ggsave(file.path('graphs', 'Survey_Response_By_Year.pdf'), width = 4, height = 3)

# Shared Gender Charts

# in report - Insert overview gender plots
Gender_Total = ggplot(shared_g, aes(x=survey, fill = gender))+
  theme_bw() +
  geom_bar() +
  geom_text(aes(label=..count..),stat="count",position=position_stack(0.5)) +
  scale_x_continuous(breaks = c(1:7), 
                     labels = factor(1:7)) +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Response", x = "Survey", fill = "Gender", 
       title = "Students that provided gender by survey")
ggsave(file.path('graphs', 'Survey_Responses_on_Gender.pdf'), width = 4, height = 3)

# in report - Insert overview gender plots
Gender_by_Year = ggplot(shared_g, aes(x=year, fill = gender))+
  theme_bw() +
  geom_bar() +
  geom_text(aes(label=..count..),stat="count",position=position_stack(0.5)) +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Response", x = "Year", fill = "Gender", 
       title = "Students that provided gender by year")
ggsave(file.path('graphs', 'Survey_Responses_on_Gender_by_Year.pdf'), width = 4, height = 3)

# in report - Insert student gender plot
Shared_Gender = ggplot(shared_g, aes(x=gender, fill = employment_status))+
  theme_bw() +
  geom_bar() +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Count of Survey Responses", x = "Gender", fill = "Employment Status",
       title = "Students that provided gender by employment state")
  ggsave(file.path('graphs', 'Shared_Gender.pdf'), width = 4, height = 3)
  
# in report - Insert gender by age plot
Shared_Gender_by_Age = ggplot(shared_g, aes(x=gender, fill = age_range))+
  theme_bw() +
  geom_bar() +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Response", x = "Gender", fill = "Age Range",
       title = "Students that provided gender by age range")
  ggsave(file.path('graphs', 'Shared_Gender_by_Age.pdf'), width = 4, height = 3)
  
# in Overview presentation
Shared_Gender_by_Emp_by_Survey = ggplot(shared_g, aes(x=gender, fill = employment_status))+
  theme_bw() +
  geom_bar() +
  facet_wrap(~ survey) +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Response", x = "Gender", fill = "Employment Status",
       title = "Students that provided gender and employment status")
  ggsave(file.path('graphs', 'Shared_Gender_by_Emp_by_Survey.pdf'), width = 4, height = 3)
  ggsave(file.path('reports/Images', 'Shared_Gender_by_Emp_by_Survey.png'), width = 5, height = 3)

# in report - Insert gender by age plot 
Shared_Gender_by_Age_by_Survey = ggplot(shared_g, aes(x=gender, fill = age_range))+
  theme_bw() +
  geom_bar() +
  facet_wrap(~ survey) +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Response", x = "Gender", fill = "Age Range",
       title = "Students that provided gender and age")
  ggsave(file.path('graphs', 'Shared_Gender_by_Age_by_Survey.pdf'), width = 4, height = 3)

# In report - insert Male Female response plots
Shared_MF_by_Age_by_Survey = ggplot(shared_mf, aes(x=gender, fill = age_range))+
    theme_bw() +
    geom_bar() +
    facet_wrap(~ survey) +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Response", x = "Gender", fill = "Age Range",
         title = "Male or female students that provided age range by survey")
  ggsave(file.path('graphs', 'Male_Female_by_Age_by_Survey.pdf'), width = 4, height = 3)
  
Shared_MF_by_Age = ggplot(shared_mf, aes(x=gender, fill = age_range))+
    theme_bw() +
    geom_bar() +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Response", x = "Gender", fill = "Age Range",
         title = "Male or female students that provided age range")
  ggsave(file.path('graphs', 'Male_Female_by_Age.pdf'), width = 4, height = 3)
  
# Shared Age Charts 
# In report - insert Male Female response plots
Shared_Age_and_Gender_by_Year = ggplot(shared_mf, aes(x=gender, fill = age_range))+
    theme_bw() +
    geom_bar() +
    facet_wrap(~ year) +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Response", x = "Gender", fill = "Age Range",
         title = "Male or female students that provided age range by year")
  ggsave(file.path('graphs', 'Male_Female_by_Age_by_Year.pdf'), width = 4, height = 3)
  
# In report - insert age response plots
  Age_Range_Total = ggplot(shared_a, aes(x=survey, fill = age_range))+
    theme_bw() +
    geom_bar()+
    scale_x_continuous(breaks = c(1:7), 
                       labels = factor(1:7)) +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Response", x = "Survey", fill = "Age Range", 
         title = "Students that provided age range by survey")
  ggsave(file.path('graphs', 'Survey_Responses_on_Age_Range.pdf'), width = 4, height = 3)

# In report - insert age response plot 
Age_Range_by_Year = ggplot(shared_a, aes(x=year, fill = age_range))+
    theme_bw() +
    geom_bar() +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Response", x = "Year", fill = "Age Range", 
         title = "Students that provided age range by year")
  ggsave(file.path('graphs', 'Survey_Responses_on_Age_Range_by_Year.pdf'), width = 4, height = 3)
  
# Employment Area charts (both in report)
Employment_Area_Total = ggplot(shared_ea, aes(x=survey, fill = employment_area))+
    theme_bw() +
  geom_bar()+
  scale_x_continuous(breaks = c(1:7), 
                     labels = factor(1:7)) +
  theme(legend.text = element_text(color = "black", size = 7)) +
 labs(y = "Survey Response", x = "Survey", fill = "Employment Area", 
       title = "Students that provided employment area by survey")
  ggsave(file.path('graphs', 'Survey_Responses_on_Employment_Area.pdf'), width = 4, height = 3)
  
Employment_Area_by_Year = ggplot(shared_ea, aes(x=year, fill = employment_area))+
  theme_bw() +
  geom_bar() +
  theme(legend.text = element_text(color = "black", size = 7)) +
   labs(y = "Survey Response", x = "Year", fill = "Employment Area", 
       title = "Students that provided employment area by year")
  ggsave(file.path('graphs', 'Survey_Responses_on_Employment_Area_by_Year.pdf'), width = 4, height = 3)
  
#Employment Status Charts (both in report)
Employment_Status_Total = ggplot(shared_es, aes(x=survey, fill = employment_status))+
  theme_bw() +
  geom_bar() +
  scale_x_continuous(breaks = c(1:7), 
                     labels = factor(1:7)) +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Response", x = "Survey", fill = "Employment Status", 
       title = "Students that provided employment status by survey")
  ggsave(file.path('graphs', 'Survey_Responses_on_Employment_Status.pdf'), width = 4, height = 3)
  
Employment_Status_by_Year = ggplot(shared_es, aes(x=year, fill = employment_status))+
  theme_bw() +
  geom_bar() +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Response", x = "Year", fill = "Employment Status", 
       title = "Students that provided employment status by year")
  ggsave(file.path('graphs', 'Survey_Responses_on_Employment_Status_by_Year.pdf'), width = 4, height = 3)
  
#Highest Education Charts (both in report)   
Highest_Ed_Total = ggplot(shared_h, aes(x=survey, fill = highest_education_level))+
    theme_bw() +
    geom_bar() +
    scale_x_continuous(breaks = c(1:7), 
                       labels = factor(1:7)) +
  scale_fill_brewer(palette="BrBG") +
  labs(y = "Survey Response", x = "Survey", fill = "Employment Status", 
         title = "Students that provided highest education by survey")
  ggsave(file.path('graphs', 'Survey_Responses_on_Highest_Education_Status.pdf'), width = 4, height = 3)

# in Overview presentation  
Highest_Ed_by_Year = ggplot(shared_h, aes(x=year, fill = highest_education_level))+
    theme_bw() +
    geom_bar() +
  scale_fill_brewer(palette="BrBG") +
    labs(y = "Survey Response", x = "Year", fill = "Highest Education", 
         title = "Students that provided highest education by year")
  ggsave(file.path('graphs', 'Survey_Responses_on_Highest_Education_by_Year.pdf'), width = 4, height = 3)
  ggsave(file.path('reports/Images', 'Survey_Responses_on_Highest_Education_by_Year.png'), width = 5, height = 3)

# Line graphs of shared data numbers
  # in Overview presentation
Details_Shared_Over_Time <- ggplot() +
  theme_bw() +
  geom_line(data = enrol, aes(enroldate, Shared_Info), colour = "darkcyan", size = 0.7)+
  scale_x_date(date_labels="%b %y",date_breaks  ="2 months") +
  theme(axis.text.x = element_text(size = 6)) +
  labs(y = "Details shared", x = "Enrol Date", fill = "Amount of details shared", 
       title = "Enrolments and amount of details shared")
ggsave(file.path('graphs', 'Details_Shared_Over_Time.pdf'), width = 4, height = 3)
ggsave(file.path('reports/Images', 'Details_Shared_Over_Time.png'), width = 5, height = 3)

# in Overview presentation
Enrolments_Over_Time <- ggplot() +
  theme_bw() +
  geom_line(data = enrol, aes(enroldate, survey), colour = "darkcyan", size = 0.7)+
  scale_x_date(date_labels="%b %y",date_breaks  ="2 months") +
  theme(axis.text.x = element_text(size = 6)) +
  labs(y = "Survey", x = "Enrol Date", title = "Enrolment Dates")
Enrolments_Over_Time
ggsave(file.path('graphs', 'Enrolments_Over_Time.pdf'), width = 4, height = 3)
ggsave(file.path('reports/Images', 'Enrolments_Over_Time.png'), width = 5, height = 3)



