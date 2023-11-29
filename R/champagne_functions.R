
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


# Example data
heights <- c(2, 3, 4)
radii <- c(1, 2, 3)


#' Calculate the volume of a champagne glass.
#'
#' This function calculates the volume of a champagne glass based on its
#' height and radius.
#'
#' @param h Height of the champagne glass.
#' @param r Radius of the champagne glass.
#'
#' @return The volume of the champagne glass.
#'
#' @export
#'
#' @examples
#' champagne_glass(2, 1)
#' champagne_glass(3, 2)
#'
champagne_glass <- function(h, r) {
  if (h <= r) {
    return((1/3) * pi * h^2 * (3 * r - h))
  } else {
    return((1/3) * pi * r^2 * (3 * h - r))
  }
}


#' Vectorized version of the champagne_glass function using a for loop.
#'
#' This function calculates the volume of champagne glasses for given heights
#' and radii using a vectorized for loop.
#'
#' @param heights Numeric vector of heights.
#' @param radii Numeric vector of radii.
#'
#' @return Numeric vector of calculated volumes.
#'
#' @export
#'
#' @examples
#' vectorized_for_loop(c(2, 3, 4), c(1, 2, 3))
#'
vectorized_for_loop <- function(heights, radii) {
  result <- numeric(length(heights))
  for (i in seq_along(heights)) {
    h <- heights[i]
    r <- radii[i]
    result[i] <- ifelse(h <= r, (1/3) * pi * h^2 * (3 * r - h), (1/3) * pi * r^2 * (3 * h - r))
  }
  return(result)
}


#' Vectorized version of the champagne_glass function using purrr map function.
#'
#' This function calculates the volume of champagne glasses for given heights
#' and radii using the purrr map function.
#'
#' @param heights Numeric vector of heights.
#' @param radii Numeric vector of radii.
#'
#' @return Numeric vector of calculated volumes.
#'
#' @export
#'
#' @examples
#' vectorized_purrr_map(c(2, 3, 4), c(1, 2, 3))
#'
#' @import purrr
#' @importFrom purrr map2_dbl
#'
vectorized_purrr_map <- function(heights, radii) {
  map2_dbl(heights, radii, ~ifelse(.x <= .y, (1/3) * pi * .x^2 * (3 * .y - .x), (1/3) * pi * .y^2 * (3 * .x - .y)))
}


#' Vectorized version of the champagne_glass function using apply functions.
#'
#' This function calculates the volume of champagne glasses for given heights
#' and radii using apply functions.
#'
#' @param heights Numeric vector of heights.
#' @param radii Numeric vector of radii.
#'
#' @return Numeric vector of calculated volumes.
#'
#' @export
#'
#' @examples
#' vectorized_sapply(c(2, 3, 4), c(1, 2, 3))
#'
vectorized_sapply <- function(heights, radii) {
  sapply(seq_along(heights), function(i) {
    h <- heights[i]
    r <- radii[i]
    ifelse(h <= r, (1/3) * pi * h^2 * (3 * r - h), (1/3) * pi * r^2 * (3 * h - r))
  })
}


#' Vectorized version of the champagne_glass function using Vectorize.
#'
#' This function calculates the volume of champagne glasses for given heights
#' and radii using the Vectorize function.
#'
#' @param h Numeric vector of heights.
#' @param r Numeric vector of radii.
#'
#' @return Numeric vector of calculated volumes.
#'
#' @export
#'
#' @examples
#' vectorize_function(c(2, 3, 4), c(1, 2, 3))
#'
#' @aliases vectorize_function
#' @usage
#' vectorize_function(h, r)
vectorize_function <- Vectorize(champagne_glass)
vectorize_results <- vectorize_function(heights, radii)

