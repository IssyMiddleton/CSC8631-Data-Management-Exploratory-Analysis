The preprocessing scripts (or data munging code) for the project are stored in the 'munge' folder. Scripts add columns at runtime, merge data sets and adjust formats. The preprocessing scripts stored in `munge` will be executed sequentially when load.project()` is called. Numbers within filenames indicate the sequential order of the scripts.