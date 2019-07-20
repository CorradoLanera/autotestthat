#' Run auto_test_package in a local job of RStudio
#'
#' @param pkg path to package
#' @param ... Argument to be passed to
#'            \code{\link[testthat]{auto_test_package}}
#' @return the opened job's id (invisibly)
#' @export
#' @seealso \code{\link[testthat]{auto_test_package}}
#' @keywords debugging
#' @seealso [auto_test()] for details on how method works
auto_test_package_job <- function(pkg = ".", ...) {
    rstudioapi_required()
    rstudioapi::verifyAvailable("1.2")

    pkg_path <- normalizePath(pkg)

    # File name is reported in the Job tab.
    tmp_name    <- paste0(basename(pkg_path), "_auto_test")
    tmp_content <- paste0(
        'testthat::auto_test_package(pkg = "', path_to_write(pkg_path), '")'
    )

    job <- rstudioapi::jobRunScript(tmp_for_job(tmp_name, tmp_content))


    cat(paste0(
        "Job ", colourise(job, "skip"), " is testing the package ",
        colourise(basename(pkg_path), "success"), " continuously.\n"
    ))
    cat(paste0(
        "Tests will rerunning at any saved change into ",
        colourise('R/', 'success'), ", ", colourise('src/', 'success'),
        ", or ", colourise('test/testthat/', 'success'), " folders.\n"
    ))
    cat(paste0(
        'Stop the job from the ', colourise("Jobs", "success"), ' pane, ',
        'restarting the current R session, or calling:
    ',colourise(paste0('stop_auto_test_job("', job, '")'), 'skip'), '\n'
    ))

    invisible(job)
}

#' @param job The job id
#' @export
#' @return TRUE (invisibly) if the job is stopped, FALSE otherwise.
#' @keywords debugging
#' @describeIn auto_test_package_job Stop the process running the
#'   continuous tests on the package (if it is run not in the
#'   open-source edition of RStudio), or describe two alternative to
#'   stop it manually.
stop_auto_test_job <- function(job) {
    rstudioapi_required()
    rstudioapi::verifyAvailable("1.2")

    if (can_stop_jobs()) {
        verify_job_exists(job)
        stop_auto_test_package_job(job)
    } else {
        explain_how_to_stop_job()
    }
}
