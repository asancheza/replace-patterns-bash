# Introduction

Bash script that, given a directory, will:

  + replace 'foo' in any file names with 'bar'

  + replace 'foo' in the contents of any files with 'bar'

  + output the file names that were changed

# Execution

```
# Run in examples folder
./replace_pattern_files

# Help
./replace_pattern_files -h
Replace files help
Use -d to change the default directory (examples)
Not existing matches
Not files changed

# Other directory instead examples
./replace_pattern_files -d tests
```
