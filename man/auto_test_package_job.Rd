% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auto_test_package_job.R
\name{auto_test_package_job}
\alias{auto_test_package_job}
\alias{stop_auto_test_job}
\title{Run auto_test_package in a local job of RStudio}
\usage{
auto_test_package_job(pkg = ".", ...)

stop_auto_test_job(job)
}
\arguments{
\item{pkg}{path to package}

\item{...}{Argument to be passed to
\code{\link[testthat]{auto_test_package}}}

\item{job}{The job id}
}
\value{
the opened job's id (invisibly)

TRUE (invisibly) if the job is stopped, FALSE otherwise.
}
\description{
Run auto_test_package in a local job of RStudio
}
\section{Functions}{
\itemize{
\item \code{stop_auto_test_job}: Stop the process running the
continuous tests on the package (if it is run not in the
open-source edition of RStudio), or describe two alternative to
stop it manually.
}}

\seealso{
\code{\link[testthat]{auto_test_package}}

[auto_test()] for details on how method works
}
\keyword{debugging}
