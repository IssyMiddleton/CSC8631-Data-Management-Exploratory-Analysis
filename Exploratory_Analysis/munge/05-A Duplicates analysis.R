#analysis of duplicate learner_id records identified in previous pre-processing script
duplicate_table = table(repeated$year, repeated$survey)

#bar chart of the duplicate records identified when all the survey files have
#been combined
Duplicate_Records = ggplot(repeated, aes(x=survey))+
  theme_bw() +
  geom_bar(fill = "steelblue", colour = "steelblue") +
  scale_x_continuous(breaks = c(1:7), 
                     labels = factor(1:7)) +
  labs(y = "Count of Duplicate", x = "Enrolment Survey",
       title = "Duplicate Enrolment Records by Course Intake", subtitle = " ")
ggsave(file.path('graphs', 'Duplicate_Records.pdf'),width=3, height=3, units="in")

