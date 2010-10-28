\name{ks.burrX}
\alias{ks.burrX}

\title{Test of Kolmogorov-Smirnov for the BurrX distribution}

\description{
The function \code{ks.burrX()} gives the values for the KS test assuming a BurrX with shape
  parameter alpha and scale parameter lambda. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}

\usage{
ks.burrX(x, alpha.est, lambda.est, 
    alternative = c("less", "two.sided", "greater"), plot = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations.}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{lambda.est}{estimate of the parameter lambda}
  \item{alternative}{indicates the alternative hypothesis and must be one of \code{"two.sided"} (default), \code{"less"}, or \code{"greater"}.}
  \item{plot}{Logical; if TRUE, the cdf plot is provided. }
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\details{The Kolmogorov-Smirnov test is a goodness-of-fit technique based on the maximum distance between the empirical and theoretical cdfs.}
\value{The function \code{ks.burrX()} carries out the KS test for the BurrX}

\references{
Kundu, D., and Raqab, M.Z. (2005).
\emph{Generalized Rayleigh Distribution: Different Methods of Estimation},
Computational Statistics and Data Analysis, 49, 187-200.

Surles, J.G., and Padgett, W.J. (2005).
\emph{Some properties of a scaled Burr type X distribution},
Journal of Statistical Planning and Inference, 128, 271-280.

Raqab, M.Z., and Kundu, D. (2006).
\emph{Burr Type X distribution: revisited},
Journal of Probability and Statistical Sciences, 4(2), 179-193.
}

\seealso{
\code{\link{pp.burrX}} for \code{PP} plot and \code{\link{qq.burrX}} for \code{QQ} plot
}

\examples{
## Load data sets
data(bearings)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.1989515, lambda.est = 0.0130847

ks.burrX(bearings, 1.1989515, 0.0130847, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}

