The pre-processing scripts (or data munging code) for the project are stored in the 'munge' folder. 

These preprocessing scripts stored in `munge` will be executed sequentially when load.project()` is called. Numbers within filenames indicate the sequential order of the scripts.

The scripts:

- add columns at runtime, merge data sets and adjust data formats
- remove duplicate records where learner_id is not unique, calculating course duration between first and last enrolment date
- filters the data by groups of students willing to share data
- categorises data
- provides additional data items on duplicate records
- calculates volume of shared data items 
- determines counts and percentages of data that it shared by student, by survey
- and calculates counts and percentage of data that is not shared 
