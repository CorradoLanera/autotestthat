
<!-- README.md is generated from README.Rmd. Please edit that file -->

# autotestthat

<!-- badges: start -->

[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/CorradoLanera/autotestthat?branch=master&svg=true)](https://ci.appveyor.com/project/CorradoLanera/autotestthat)
[![Travis build
status](https://travis-ci.org/CorradoLanera/autotestthat.svg?branch=master)](https://travis-ci.org/CorradoLanera/autotestthat)
[![Codecov test
coverage](https://codecov.io/gh/CorradoLanera/autotestthat/branch/master/graph/badge.svg)](https://codecov.io/gh/CorradoLanera/autotestthat?branch=master)
[![CRAN
status](https://www.r-pkg.org/badges/version/autotestthat)](https://CRAN.R-project.org/package=autotestthat)
[![CRAN
downloads](https://cranlogs.r-pkg.org/badges/grand-total/autotestthat.svg?color=orange)](https://cranlogs.r-pkg.org/badges/grand-total/autotestthat)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
<!-- badges: end -->

The goal of **autotestthat** is to provide a way to use
`testthat::auto_test_package()` functionality on
[RStudio](https://www.rstudio.com/), mantaining your R session free.

## Installation

Shortly, you can surely install the released version of **autotestthat**
from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("autotestthat")
```

I prefer to wait for some feedback and to use it for some more time
before to publish it on [CRAN](https://CRAN.R-project.org).

In the meanwhile, you can install the development version from
[GitHub](https://github.com/) with the following procedure:

``` r
# install.packages("devtools")
devtools::install_github("CorradoLanera/autotestthat")
```

## Example

The package does not provide quite any specific function to use from the
command line or in a script.

Mainly you are only asked to attach it by

``` r
library(autotestthat)
```

and next you can use the Addin `Continuously test package` from the
project-bar menu of [RStudio](https://www.rstudio.com/) (which is
required to be at least v.1.2).

When you click on that option, an RStudio *Job* is activated running the
`testthat::auto_test_package()` on the background. That’s it.

You can now maintain visible the *Job* tab to see regularly and
automatically all your tests *fail*\!\[1\] On top of that, you can
switch to the *console* tab whenever you need, using R at your
convenience: your current r-session is there, free to receive codes to
run.

The advantage of running an automated test continuously while you are
developing code is that you do not have to decide *when* test your
package, and even *that* you have to (/are) test(/ing) your package:
every time you create or modify a function, a test or a helper, all the
relevant test are automatically re-executed on an updated environment
emulating your one.

## Additional notes

To stop the auto-testing job, you can use `stop_auto_test_job()`. On the
other hands, it does not work on the open-source version of RStudio. If
you are using the open-source version of RStudio, you can stop the job
by a click on the *stop* button next to the job name in the main *Jobs*
tab. Other possible ways to stop the job is to restart your main
R-session or close RStudio.

## Technical notes

On [AppVeyor](https://ci.appveyor.com) the tests for R-3.4.4/3.3.3/3.2.5
required me to add a request to
[RTools](https://cran.r-project.org/bin/windows/Rtools/) be installed,
that the package
[remotes](https://cran.r-project.org/web/packages/remotes/index.html)
works in [standalone
mode](https://github.com/r-lib/remotes#standalone-mode), and ask to
Apveyor to not install the `Suggests` package neither.

All of the three abovementioned requirements would not be necessary for
all the other builds on Windows on [AppVeyor](https://ci.appveyor.com),
nor for any build on Linux or OSX on [Travis](https://travis-ci.com/).

## Disclaimer

I started this project, which is my first “public”/general-purposed one,
thanks to
[this](https://github.com/r-lib/testthat/pull/892#issuecomment-513226687)
advice. I hope I will be able to reach the expectations and to be of
some help for someone outside here.

## Code of Conduct

Please note that the ‘autotestthat’ project is released with a
[Contributor Code of Conduct](.github/CODE_OF_CONDUCT.md). By
contributing to this project, you agree to abide by its terms.

## Reference

<small>

1.  <http://agiledata.org/essays/tdd.html>
