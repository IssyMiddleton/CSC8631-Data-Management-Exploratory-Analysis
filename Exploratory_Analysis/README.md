# Exploratory_Analysis

This statistical analysis project uses the ProjectTemplate for folder structure
and contents.

For more details about ProjectTemplate, see http://projecttemplate.net

This file introduces the project. The aim of the analysis was to determine
attitudes to sharing personal data from student survey responses to seven
intakes of an online cyber security course.

To load the project, Set Your Working Directory, `setwd()` to the directory
where this README file is located. Then you need to run the following two lines
of R code:

library('ProjectTemplate') 
load.project()

After you enter the second line of code, you'll see a series of automated
messages as ProjectTemplate goes about doing its work. This work involves: 

* Reading in the global configuration file contained in `config` 
* Loading any R packages you listed in the configuration file 
* Reading in any datasets stored in `data` or `cache` 
* Preprocessing the associated data using the files in the`munge` directory
* Execution of any analysis code within the 'src' folder

For every additional analysis created, it is recommended to add a separate file in the `src` directory. If the files start with the two lines mentioned above:

library('ProjectTemplate') 
load.project()

You'll have access to all of your data, already fully preprocessed, and all of
the libraries you want to use.
