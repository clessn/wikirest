
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

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
