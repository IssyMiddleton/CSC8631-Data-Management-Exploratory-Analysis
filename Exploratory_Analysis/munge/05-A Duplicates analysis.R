#analysis of duplicate learner_id records identified in previous pre-processing script
duplicate_table = table(repeated$year, repeated$survey)

#bar chart of the duplicate records identified when all the survey files have
#been combined
Duplicate_Records = ggplot(repeated, aes(x=survey))+
  theme_bw() +
  geom_bar(fill = "darkcyan", colour = "darkcyan") +
  scale_x_continuous(breaks = c(1:7), 
                     labels = factor(1:7)) +
  labs(y = "Duplicates", x = " Survey",
       title = "Duplicate enrolment records by survey")
ggsave(file.path('reports/Images', 'Duplicate_Records.png'),width=5, height=3, units="in")

#count of duplicate records, see counts in pre-processing file 2