\name{ks.lfr}
\alias{ks.lfr}

\title{Test of Kolmogorov-Smirnov for the linear failure rate(LFR) distribution}
\description{
The function \code{ks.lfr()} gives the values for the KS test assuming a linear failure rate(LFR) with shape
  parameter alpha and scale parameter beta. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.lfr(x, alpha.est, beta.est, 
    alternative = c("less", "two.sided", "greater"), plot = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations.}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
  \item{alternative}{indicates the alternative hypothesis and must be one of \code{"two.sided"} (default), \code{"less"}, or \code{"greater"}.}
  \item{plot}{Logical; if TRUE, the cdf plot is provided. }
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\details{The Kolmogorov-Smirnov test is a goodness-of-fit technique based on the maximum distance between the empirical and theoretical cdfs.}
\value{The function \code{ks.lfr()} carries out the KS test for the linear failure rate(LFR)}

\references{
Bain, L.J. (1974).
\emph{Analysis for the Linear Failure-Rate Life-Testing Distribution},
Technometrics, 16(4), 551 - 559.

Lawless, J.F. (2003).
\emph{Statistical Models and Methods for Lifetime Data},
John Wiley and Sons, New York.

Sen, A. and Bhattacharya, G.K. (1995).
\emph{Inference procedure for the linear failure rate mode},
Journal of Statistical Planning and Inference, 46, 59-76.
}

\seealso{
\code{\link{pp.lfr}} for \code{PP} plot and \code{\link{qq.lfr}} for \code{QQ} plot
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(sys2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 1.77773e-03,  beta.est = 2.77764e-06

ks.lfr(sys2, 1.777673e-03, 2.777640e-06, alternative = "two.sided", plot = TRUE)
}
\keyword{htest}
