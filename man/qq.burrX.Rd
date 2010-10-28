\name{qq.burrX}
\alias{qq.burrX}

\title{
Quantile versus quantile (QQ) plot for the BurrX distribution
}
\description{
The function \code{qq.burrX()} produces a QQ plot for the BurrX based on their MLE or
any other estimate. Also, a line going through the first and the third
quartile can be sketched.
}
\usage{
qq.burrX(x, alpha.est, lambda.est, main = " ", line.qt = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{lambda.est}{estimate of the parameter lambda}
  \item{main}{the title for the plot}
  \item{line.qt}{logical; if TRUE, a line going by the first and third quartile is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{qq.burrX()} carries out a QQ plot for the BurrX.
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
\code{\link{pp.burrX}} for \code{PP} plot  and \code{\link{ks.burrX}} function
}
\examples{
## Load data sets
data(bearings)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.1989515, lambda.est = 0.0130847

qq.burrX(bearings, 1.1989515, 0.0130847, main = " ", line.qt = FALSE)
}

\keyword{hplot}
