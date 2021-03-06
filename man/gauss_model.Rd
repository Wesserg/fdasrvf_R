% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gauss_model.R
\name{gauss_model}
\alias{gauss_model}
\title{Gaussian model of functional data}
\usage{
gauss_model(fn, time, qn, gam, n = 1, sort_samples = FALSE)
}
\arguments{
\item{fn}{matrix (\eqn{N} x \eqn{M}) of \eqn{M} aligned functions with \eqn{N} samples}

\item{time}{vector of size \eqn{N} describing the sample points}

\item{qn}{matrix (\eqn{N} x \eqn{M}) of \eqn{M} aligned srvfs}

\item{gam}{warping functions}

\item{n}{number of random samples (n = 1)}

\item{sort_samples}{sort samples (default = F)}
}
\value{
Returns a list containing \item{fs}{random aligned samples}
\item{gams}{random warping function samples}
\item{ft}{random function samples}
}
\description{
This function models the functional data using a Gaussian model extracted from
the principal components of the srvfs
}
\examples{
data("simu_data")
data("simu_warp")
out1 = gauss_model(simu_warp$fn,simu_data$time,simu_warp$qn,simu_warp$gam,n = 10)
}
\references{
Tucker, J. D., Wu, W., Srivastava, A.,
 Generative Models for Function Data using Phase and Amplitude Separation,
 Computational Statistics and Data Analysis (2012), 10.1016/j.csda.2012.12.001.
}
\keyword{pca}

