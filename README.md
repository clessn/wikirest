
<!-- README.md is generated from README.Rmd. Please edit that file -->

# wikirest

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/wikiverse)](https://CRAN.R-project.org/package=wikiverse)
[![R-CMD-check](https://github.com/clessn/wikirest/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/clessn/wikirest/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/clessn/wikirest/branch/main/graph/badge.svg)](https://app.codecov.io/gh/clessn/wikirest?branch=main)
<!-- badges: end -->

The goal of wikirest is to get data from the Wikimedia REST API.

## Installation

You can install the development version of wikirest from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("clessn/wikirest")
```

## Example

``` r
library("wikirest")

get_most_viewed_per_country(
  country = "CA",
  access = "all-access",
  date = "2022-01-01",
  tidy = TRUE
) |>
  utils::head()
#> # A tibble: 6 × 9
#>   country access     year  month day   article          project views_ceil  rank
#>   <chr>   <chr>      <chr> <chr> <chr> <chr>            <chr>        <int> <int>
#> 1 CA      all-access 2022  01    01    Main_Page        en.wik…     212200     1
#> 2 CA      all-access 2022  01    01    Betty_White      en.wik…     156900     2
#> 3 CA      all-access 2022  01    01    Special:Search   en.wik…      57900     3
#> 4 CA      all-access 2022  01    01    Journey_(band)   en.wik…      36300     4
#> 5 CA      all-access 2022  01    01    Wikipédia:Accue… fr.wik…      27900     5
#> 6 CA      all-access 2022  01    01    Arnel_Pineda     en.wik…      26000     6
```

## Usage

For API documentation, terms of service and licensing information, see
[wikimedia.org/api/rest_v1/](https://wikimedia.org/api/rest_v1/).
