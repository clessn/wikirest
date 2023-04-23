
<!-- README.md is generated from README.Rmd. Please edit that file -->

# wikirest

<!-- badges: start -->
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

get_most_viewed_per_country() |>
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