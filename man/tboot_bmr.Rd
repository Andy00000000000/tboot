% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tboot_bmr.R
\name{tboot_bmr}
\alias{tboot_bmr}
\title{Function tboot_bmr}
\usage{
tboot_bmr(nrow, weights_bmr, tol_rel_sd = 0.01)
}
\arguments{
\item{nrow}{number of rows in the new bootstrapped dataset.}

\item{weights_bmr}{an object of class 'tweights' output from the 'tweights' function.}

\item{tol_rel_sd}{An error will be called if for some simulation if the target is not achievable with the data. However, the error will only be called if max absolute difference releative to the marginal standard is greater than specified.}
}
\value{
A simulated dataset with 'nrow' rows. The underlying 'true' posterior parameter value is an attribute which can be extracted useing \code{attr(ret, "post_bmr")} where 'ret' is the matrix.
}
\description{
Bootstrap \code{nrow} rows of \code{dataset} using
the given row-level weights.
}
\details{
Simulates a dataset by first simulating from the posterior distribution of the column means and then simulating a dataset with that underlying mean. Details a further documented in the vignette.
}
\seealso{
\code{\link{tweights}}
}
