# champagneJOLIVEI8

[![Build Status](https://travis-ci.org/ptds2023/champagneJOLIVEI8.svg?branch=main)](https://travis-ci.org/ptds2023/champagneJOLIVEI8)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub issues](https://img.shields.io/github/issues/ptds2023/champagneJOLIVEI8)](https://github.com/ptds2023/champagneJOLIVEI8/issues)


## Overview

The `champagneJOLIVEI8` package provides functions for modeling the volume of a champagne glass based on its height and radius. It includes both non-vectorized and vectorized versions of the modeling function. Additionally, the package offers a simulation function to estimate the amount of champagne needed for a party based on the number of guests, glasses per guest, and pouring intervals.

## Installation

You can install the package from GitHub using the `devtools` package:

```R
devtools::install_github("https://github.com/ptds2023/champagneJOLIVEI8")
```

## Functions
For each function we are going to use the following variables:
- h: Height of the champagne glass.
- r: Radius of the champagne glass.
  
However, for the vectorized functions we are going to the same variables as vectors:
- heights: Numeric vector of heights.
- radii: Numeric vector of radii.
  
#### `champagne_glass`
Calculate the volume of a champagne glass.

```R
champagne_glass(h, r)
```

#### `vectorized_for_loop`
Vectorized version of the champagne_glass function using a for loop.

```R
vectorized_for_loop(heights, radii)
```

#### `vectorized_purrr_map`
Vectorized version of the champagne_glass function using purrr map function.

```R
vectorized_purrr_map(heights, radii)
```

####  `vectorized_sapply`
Vectorized version of the champagne_glass function using apply functions.

```R
vectorized_sapply(heights, radii)
```

#### `vectorize_function`
Vectorize Function.

```R
vectorize_function(heights, radii)
```

## How to use: examples 
Here's a quick example of how to use the `champagneJOLIVEI8` package:

```R
library(champagneJOLIVEI8)

# Example data
heights <- c(2, 3, 4)
radii <- c(1, 2, 3)

# Calculate the volume of a champagne glass
champagne_glass(2, 1)

# Vectorized version using a for loop
vectorized_for_loop(heights, radii)

# Vectorized version using purrr map function
vectorized_purrr_map(heights, radii)

# Vectorized version using apply functions
vectorized_sapply(heights, radii)

# Vectorize Function
vectorize_function(heights, radii)
```

## Getting Help
If you encounter any issues or have questions, feel free to open an issue on GitHub or send me directly an email to `jessica.oliveira@unil.ch`


## License
This package is licensed under the MIT License - see the `LICENSE` file for details.



# Homework 4

## How to run the code
The solutions for this homework are divided into two main parts:
- __Part 1:__ in the `part1_modeling.Rmd` you will find the answers for the first part regarding the Champagne glass problem. You can directly run the file. (you can find the repository here: https://github.com/ptds2023/homework-4-jolivei8)

- __Part 2:__ This parts is related to R package. To create the website locally with `pkgdown`, you can run the following command in your R console (make sure you have already installed the `pkgdown` package):

```R
pkgdown::build_site()
```


## Files description

#### `part1_modeling.Rmd`
This files provides a modeling approach for a champagne glass, comparing various implementations for efficiency. It includes a vectorized version and benchmarks using `microbenchmark`. Additionally, the document covers volume computations, party organization simulations, and estimating bottle requirements for a 99% satisfaction rate.

__a) Modeling the Champagne Glass__
- Implementation Comparison: Several approaches (for loop, purrr map, apply functions) are benchmarked against a vectorized version.
- Vectorized Version: A concise vectorized implementation is proposed and benchmarked.

__b) Computing the Volume of Champagne Glass__
- Integration Techniques: The volume is computed using integration techniques for a given function.

__c) Organizing a Champagne Party__
- Simulation: 10,000 parties are simulated, recording total liters and bottles served.
- Visualizations: Boxplots and histograms visualize the distribution of servings.
- Quantile Calculation: The number of bottles needed for a 99% satisfaction rate is estimated.


## Objectives :full_moon_with_face:

The objectives of this homework assignment are as follows:

- 📏 Develop a deep understanding of **mathematical modeling** and **calculus** in R, particularly focusing on the disk integration method for calculating volumes.
- 🖥️ Enhance skills in **vectorized computations** in R, comparing different approaches for performance optimization.
- 🧪 Strengthen understanding of **statistical distributions** and their application in simulations, such as Poisson and Normal distributions.
- 💻 Master the use of **R programming tools** like `integrate`, `uniroot`, `optimize`, and various functions from the `purrr` package.
- 📦 Develop competency in **R package development**, including function documentation, testing, and version control with GitHub.

## Deadline :alarm_clock:

Submit the homework by Wednesday, 29th November 2023 at 23:59 by pushing to the dedicated repository.

Based on the example and the content of your new homework assignment, here are the requirements:

## Requirements :warning:

This homework **must** be completed using the specified GitHub template and must adhere to the following requirements:

- 🔄 Use consistent and descriptive commit messages throughout the development process.
- 📂 Your GitHub repository must include at least:
  - A **README.md** file providing a comprehensive overview of the homework, including objectives, methodology, and how to run the code.
  - A well-organized issue tracker, with at least one issue that includes a **TO DO** list related to the project.
  - At least one pull request, showcasing the process of reviewing and merging code into the main or master branch.
- 🔀 Create and work on a separate branch for development, only merging it with the main or master branch via a pull request.
- 📈 If the solution involves multiple **R scripts or RMarkdown files**, they should be clearly numbered or named to indicate their purpose and the order in which they should be executed or read.
- 🖥️ Provide detailed instructions in the `README.md` on how to install and use the R package, including any dependencies and how to run the tests.

---


### Part II build an R package

For this problem, we simply wrap functions of __Part I__ into a package:

- Create a package `champagneUSERNAME` (where `USERNAME` is your GitHub username without special characters) in RStudio: _File -> New Project... -> New Directory -> R Package_.
- Create a new GitHub repo `champagneUSERNAME` (where `USERNAME` is your GitHub username without special characters) in the `ptds2023` organization and synchronize it with your "initial" package.
- Copy the functions from the previous problem into the `R/` folder. Commit.
- Document all the functions using `roxygen2` comments. Use `devtools::document()` to generate help files afterwards. Do not forget to specify `@export` in `roxygen2` comments to export functions into `NAMESPACE` (make it visible outside the package). Commit. You should at least have the following tags:

```r
#` @title
#` @authors
#` @param (or @params)
#` @return
#` @examples (or @example)
```

- Fill in the `DESCRIPTION` file as much as possible. Commit.
- Clean up the auto-generated file `hello.R` and `hello.Rd`, from `R/` and `man/`, respectively. Commit.
- Remove `NAMESPACE` file, since it was not auto-generated by `roxygen2` (and, therefore, prevents `roxygen2` to overwrite `NAMESPACE`). Then, evoke the command `devtools::document()` to generate it. Commit.

At the end of each step, please, do not forget to commit with a meaningful message.

Note that if you use other packages, you have to specify it in `DESCRIPTION` file in the `Imports` section. To use the function from a package you have to specify its namespace. That is, use `pkg::function()` for a function.

At this step, you should verify if everything works well. You need to `Install and Restart` (in `Build` tab) and try to run `f()` (you may name it differently), as well as look at the help file by `?f`.

- Add automatic tests with `testthat`. You should at least have one test per function. For example, make sure that you obtain a given error when a "wrong" input is provided. You should at least use the test performed in the previous part of the exercise.
- Correct every errors, warnings and notes obtained from `devtools::check()` (or equivalently clicking on `Check`).
- Add Github action to make automatic checks for at least Windows, MAC and Ubuntu OS.
- Create a website with `pkgdown`. Build it and create Github action.



