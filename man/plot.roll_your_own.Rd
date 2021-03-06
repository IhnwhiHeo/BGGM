% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/roll_your_own.R
\name{plot.roll_your_own}
\alias{plot.roll_your_own}
\title{Plot \code{roll_your_own} Objects}
\usage{
\method{plot}{roll_your_own}(x, fill = "#CC79A7", alpha = 0.5, ...)
}
\arguments{
\item{x}{An object of class \code{roll_your_own}}

\item{fill}{Character string specifying the color for the ridges.}

\item{alpha}{Numeric. Transparancey of the ridges}

\item{...}{Currently ignored}
}
\value{
An object of class \code{ggplot}
}
\description{
Plot \code{roll_your_own} Objects
}
\examples{
\donttest{
####################################
###### example 1: assortment #######
####################################
# assortment
library(assortnet)

Y <- BGGM::bfi[,1:10]
membership <- c(rep("a", 5), rep("c", 5))

# fit model
fit <- estimate(Y = Y, iter = 250,
                progress = FALSE)

# membership
membership <- c(rep("a", 5), rep("c", 5))

# define function
f <- function(x,...){
 assortment.discrete(x, ...)$r
}

net_stat <- roll_your_own(object = fit,
                          FUN = f,
                          types = membership,
                          weighted = TRUE,
                          SE = FALSE, M = 1,
                          progress = FALSE)

# plot
plot(net_stat)

}
}
