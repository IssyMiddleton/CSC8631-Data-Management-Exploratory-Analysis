#set up tables that might be interesting to include in the RMarkdown report

duplicate_table = table(repeated$year, repeated$survey)
duplicate_table1 = print(duplicate_table)

duplicate_plot = plot(duplicate_table)

intake_table = table(enrol$year,enrol$survey)

intake_graph = plot(intake_table)

Duplicate_Records = ggplot(repeated, aes(x=survey))+
  theme_bw() +
  geom_bar(fill = "blue", colour = "blue") +
  labs(y = "Count of Survey Responses", x = "Intake",
       title = "Duplicate Learner_ID Analysis")
ggsave(file.path('graphs', 'Duplicate_Records.pdf'))