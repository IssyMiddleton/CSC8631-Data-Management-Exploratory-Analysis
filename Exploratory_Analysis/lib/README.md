In this folder are any files that provide useful functionality for your work, but do not constitute a statistical analysis per se. Specifically, you should use the `lib/helpers.R` script to organize any functions you use in your project that aren't quite general enough to belong in a package.

If you have project specific configuration that you'd like to store in the config object, you can specify that in `lib/globals.R`.  This is the first file loaded from `lib`, so any functions in `lib`, `munge` or `src` can reference this configuration by simply using the `config$my_config_var` form.

This project did not make any changes to files in this folder. The ones included are those generated automatically by the ProjectTemplate during load.project().