
<!-- README.md is generated from README.Rmd. Please edit that file -->

# autotestthat

<!-- badges: start -->

<!-- badges: end -->

The goal of **autotestthat** is to provide some easy way to use
`testthat::auto_test_package()` functionality on
[RStudio](https://www.rstudio.com/).

## Installation

Shortly, you can surely install the released version of **autotestthat**
from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("autotestthat")
```

I prefer to wait for some feedback and to use it for some time before to
publish it on [CRAN](https://CRAN.R-project.org)

In the meanwhile, you can install the development version from
[GitHub](https://github.com/) with the following procedure:

``` r
# install.packages("devtools")
devtools::install_github("CorradoLanera/<autotestthat>")
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

When you click on that option, a **Job** is activated running the
`testthat::auto_test_package()` on the background. That’s it.

The advantage of running an automated test continuously while you are
developing code is that you do not have to decide *when* test your
package, and even *that* you have to (/are) test(/ing) your package:
every time you create or modify a function, a test or a helper, all the
relevant test are automatically re-executed on an updated environment
emulating your one.

## Disclaimer

I started this project, which is my first “public”/general-purposed one,
thanks to
[this](https://github.com/r-lib/testthat/pull/892#issuecomment-513226687)
advice. I hope I will be able to reach the expectations and to be of
some help for someone outside here.
