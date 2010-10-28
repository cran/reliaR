\name{abic.weibull.ext}
\alias{abic.weibull.ext}

\title{Akaike information criterion (AIC) and Bayesian information criterion (BIC)
for Weibull Extension(WE) distribution}

\description{
The function \code{abic.weibull.ext()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values
assuming an Weibull Extension(WE) distribution with parameters alpha and beta.}

\usage{abic.weibull.ext(x, alpha.est, beta.est)}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
}

\value{
The function \code{abic.weibull.ext()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values.
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
\code{\link{pp.weibull.ext}} for \code{PP} plot and \code{\link{qq.weibull.ext}} for \code{QQ} plot
}

\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(sys2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 0.00019114, beta.est = 0.14696242

## Values of AIC, BIC and LogLik for the data(sys2)
abic.weibull.ext(sys2, 0.00019114, 0.14696242)
}

\keyword{models}
