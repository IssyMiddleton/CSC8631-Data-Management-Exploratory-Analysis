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

You'll have access to all of the project data, already fully pre-processed, and all of
the libraries you want to use.

The munge folder handles pre-processing scripts to extract and combine data columns, converting data types/variables etc. and outputs understandable and usable data. The output from the munge file indicates the nature of the analysis. 

The RMarkdown report generate outputs. Repeated code is saved in the src folder and use source() to import it into the .Rmd file to avoid it being dominated by lots of code. 

The src folder is just a place to store chunks of code that aren't pre-processing but you don't want in your Markdown folder, project template won't automatically run any files in here unless you call for them e.g. by knitting a Markdown document, for example "src/01-Analysis.R" in a code chunk.
