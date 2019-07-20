# autotestthat 0.1.0

* Added `stop_autotest_job()` to permit to stop the job by a script,
  if it is possible: some versions of RStudio are not allowed to use
  that kind of functionality. In the case the script cannot stop
  the job, `stop_autotest_job()` shows instruction on how to stop the 
  job manually.

* Added `auto_test_package_job()` function. It creates a suitable 
  script for the job (a job must execute a script) in a temporary
  file. Run an RStudio job on that script, and display details on it
  including instructions on how to stop it.

* Added `utils-job.R` containing utility functions for managing jobs
  in RStudio. They are function useful to:
  - create suitable path on different platform (`path_to_write()`,
  `tmp_for_job()`)
  - verify if a job is running and if it is possible to stop it
  automatically (`verify_job_exists()`, `can_stop_jobs()`)
  - stop directly a job if it is possible or explain how to do manually
  (`stop_auto_test_package_job()`, `explain_how_to_stop_job()`)
  - find useful path of the package under development.

* Added `utils-io.R` and `colour-text.R` directly from the original
`testthat` versions. They are not exported from `testthat` (from
`autotestthat` neither) and needed to render messages similarly.

# autotestthat 0.0.0.9000

* Added development support:
  - git + GitHub;
  - appVeyor + Travis + codecov;
  - gpl3 license;
  - testthat + roxygen2 + spellcheck;
  - `README.Rmd` + `README.md`.
  - `cran-comments.md`

* Added a `NEWS.md` file to track changes to the package.
