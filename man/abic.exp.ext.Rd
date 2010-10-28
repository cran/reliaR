\name{abic.exp.ext}

\alias{abic.exp.ext}

\title{Akaike information criterion (AIC) and Bayesian information criterion (BIC)
for Exponential Extension(EE) distribution}

\description{
The function \code{abic.exp.ext()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values
assuming an Exponential Extension(EE) distribution with parameters alpha and lambda.}

\usage{abic.exp.ext(x, alpha.est, lambda.est)}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{lambda.est}{estimate of the parameter lambda}
}

\value{
The function \code{abic.exp.ext()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values.
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
\code{\link{pp.exp.ext}} for \code{PP} plot and \code{\link{qq.exp.ext}} for \code{QQ} plot
}

\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.0126e+01, lambda.est = 1.5848e-04

## Values of AIC, BIC and LogLik for the data(sys2)
abic.exp.ext(sys2, 1.0126e+01, 1.5848e-04)
}

\keyword{models}
