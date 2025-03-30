
<!-- README.md is generated from README.Rmd. Please edit that file -->

# chrrdata

<!-- badges: start -->
<!-- badges: end -->

The goal of chrrdata is to provide a collection of datasets from CHRR
releases.

## Installation

You can install the development version of chrrdata from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("ganhualu/chrrdata")
```

## Usage

``` r
library(chrrdata)

# list of county FIPS codes
head(fips)
#>   statecode countycode fipscode state         county
#> 1        00        000    00000    US  United States
#> 2        01        000    01000    AL        Alabama
#> 3        01        001    01001    AL Autauga County
#> 4        01        003    01003    AL Baldwin County
#> 5        01        005    01005    AL Barbour County
#> 6        01        007    01007    AL    Bibb County
```
