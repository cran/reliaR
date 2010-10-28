\name{pp.burrX}
\alias{pp.burrX}

\title{
Probability versus Probability (PP) plot for the BurrX distribution
}
\description{
The function \code{pp.burrX()} produces a PP plot for the BurrX based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.burrX(x, alpha.est, lambda.est, main = " ", line = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{lambda.est}{estimate of the parameter lambda}
  \item{main}{the title for the plot.}
    \item{line}{logical; if TRUE, a 45 degree line is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{pp.burrX()} carries out a PP plot for the BurrX.
}

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
\code{\link{qq.burrX}} for \code{QQ} plot  and \code{\link{ks.burrX}} function
}
\examples{
## Load data sets
data(bearings)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.1989515, lambda.est = 0.0130847

pp.burrX(bearings, 1.1989515, 0.0130847, main = " ", line = TRUE)
}

\keyword{hplot}
