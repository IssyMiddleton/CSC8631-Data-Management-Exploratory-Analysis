This folder stores the data sets that (a) are generated during a preprocessing step and (b) don't need to be regenerated every single time you analyze your data. 

The `cache()` function is used to store data to this directory automatically. Any data set found in both the `cache` and `data` directories will be drawn from `cache` instead of `data` based on ProjectTemplate's priority rules.

See the global.dcf file under the config folder if you would like to change this rule.
