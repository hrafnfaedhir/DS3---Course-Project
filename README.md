# DS3-CourseProject

This project was to intended to test our processing of tidy data sets and data manipulations.

## Review Criteria
1. The submitted data set is tidy.
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks  with the data to indicate all the variables and summaries calculated, along  with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.

## Order of operations

1. Download data from the Human Activity Recognition Using Smartphones
2. Convert activity values from numeric to descriptive factors using the merge()  function.
3. Combine the training and test datasets.
4. Extracts only the features using the "mean" and "std" metrics with grep()  and select().
5. Appropriately label the data set with descriptive variable names.
* Separates Feature text into $signal (e.g. tBodyAccJerk, tBodyAcc, etc.),  variable $measure (Mean, Std), and the dimension $d (X, Y, or Z).
* Reordered the Variable names into the format $signal, $d, $measure.
* Removed special symbols from variable names.
6. Add the subjectID and activity vectors to the full data.
7. Create second data set.
* Group by activity and subjectID.
* Summarize the data for each activity/subjectID group calculating the mean for all measures.
* Assign variable names (see codebook)
8. Write the table to "DS3-CourseProject.csv"