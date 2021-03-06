% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/psi.R
\name{psi}
\alias{psi}
\title{PSI}
\usage{
psi(actual, new)
}
\arguments{
\item{actual}{A vector of original distribution}

\item{new}{A vector with the new distribution}
}
\value{
A list with psi index (value) a label and the table for with counts, percents, woe.
}
\description{
Calculation of  Population Stability Index (PSI)
}
\examples{
set.seed(1313)

actual <- sample(letters[1:3], size = 1000, prob = c(1,1,2), replace = TRUE)
new <- sample(letters[1:3], size = 3000, prob = c(1,2,2), replace = TRUE)

psi(actual, new)
}

