% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/var_estimate.R
\name{plot.summary.var_estimate}
\alias{plot.summary.var_estimate}
\title{Plot \code{summary.var_estimate} Objects}
\usage{
\method{plot}{summary.var_estimate}(x, color = "black", size = 2, width = 0, param = "all", order = TRUE, ...)
}
\arguments{
\item{x}{An object of class \code{summary.var_estimate}}

\item{color}{Character string. The color for the error bars.
(defaults to \code{"black"}).}

\item{size}{Numeric. The size for the points (defaults to \code{2}).}

\item{width}{Numeric. The width of error bar ends (defaults to \code{0}).}

\item{param}{Character string. Which parameters should be plotted ? The options
are \code{pcor}, \code{beta}, or \code{all} (default).}

\item{order}{Logical. Should the relations be ordered by size (defaults to \code{TRUE}) ?}

\item{...}{Currently ignored}
}
\value{
A list of \code{ggplot} objects.
}
\description{
Visualize the posterior distributions of each partial correlation and
regression coefficient.
}
\examples{
\donttest{

# data
Y <- subset(ifit, id == 1)[,-1]

# fit model with alias (var_estimate also works)
fit <- var_estimate(Y, progress = FALSE)

plts <- plot(summary(fit))
plts$pcor_plt
}

}
