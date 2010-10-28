\name{abic.gp.weibull}

\alias{abic.gp.weibull}

\title{Akaike information criterion (AIC) and Bayesian information criterion (BIC)
for generalized power Weibull(GPW) distribution}

\description{
The function \code{abic.gp.weibull()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values
assuming an generalized power Weibull(GPW) distribution with parameters alpha and theta.}

\usage{abic.gp.weibull(x, alpha.est, theta.est) }

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{theta.est}{estimate of the parameter theta}
}

\value{
The function \code{abic.gp.weibull()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values.
}

\references{
Akaike, H. (1978).
\emph{A new look at the Bayes procedure}, Biometrika, 65, 53-59.

Claeskens, G.  and Hjort, N. L. (2008).
\emph{Model Selection and Model Averaging}, Cambridge University Press, London.

Konishi., S. and Kitagawa, G.(2008).
\emph{Information Criteria and Statistical Modeling}, Springer Science+Business Media, LLC.

Schwarz, S. (1978).
\emph{Estimating the dimension of the model}, Annals of Statistics, 6, 461-464.

Spiegelhalter, D. J., Best, N. G., Carlin, B. P. and van der Linde, A. (2002).
\emph{Bayesian measures of complexity and fit}, Journal of the Royal Statistical Society Series B 64, 1-34.
}

\seealso{
\code{\link{pp.gp.weibull}} for \code{PP} plot and \code{\link{qq.gp.weibull}} for \code{QQ} plot
}

\examples{
## Load data sets
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(repairtimes)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est = 1.566093, theta.est = 0.355321

## Values of AIC, BIC and LogLik for the data(repairtimes)
abic.gp.weibull(repairtimes, 1.566093, 0.355321)
}

\keyword{models}
