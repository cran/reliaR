\name{ks.gumbel}
\alias{ks.gumbel}

\title{Test of Kolmogorov-Smirnov for the Gumbel distribution}
\description{
The function \code{ks.gumbel()} gives the values for the KS test assuming a Gumbel with shape
  parameter mu and scale parameter sigma. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.gumbel(x, mu.est, sigma.est, 
    alternative = c("less", "two.sided", "greater"), plot = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations.}
  \item{mu.est}{estimate of the parameter mu}
  \item{sigma.est}{estimate of the parameter sigma}
  \item{alternative}{indicates the alternative hypothesis and must be one of \code{"two.sided"} (default), \code{"less"}, or \code{"greater"}.}
  \item{plot}{Logical; if TRUE, the cdf plot is provided. }
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\details{The Kolmogorov-Smirnov test is a goodness-of-fit technique based on the maximum distance between the empirical and theoretical cdfs.}
\value{The function \code{ks.gumbel()} carries out the KS test for the Gumbel}

\references{
Marshall, A. W., Olkin, I.(2007).
\emph{Life Distributions: Structure of Nonparametric, Semiparametric, and Parametric Families},
 Springer, New York.
}

\seealso{
\code{\link{pp.gumbel}} for \code{PP} plot and \code{\link{qq.gumbel}} for \code{QQ} plot
}
\examples{
## Load data sets
data(dataset2)
## Maximum Likelihood(ML) Estimates of mu & sigma for the data(dataset2)
## Estimates of mu & sigma using 'maxLik' package
## mu.est = 212.157, sigma.est = 151.768

ks.gumbel(dataset2, 212.157, 151.768, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}
