\name{abic.logis.exp}

\alias{abic.logis.exp}

\title{Akaike information criterion (AIC) and Bayesian information criterion (BIC)
for Logistic-Exponential(LE) distribution}

\description{
The function \code{abic.logis.exp()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values
assuming an Logistic-Exponential(LE) distribution with parameters alpha and lambda.}

\usage{abic.logis.exp(x, alpha.est, lambda.est)}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{lambda.est}{estimate of the parameter lambda}
}

\value{
The function \code{abic.logis.exp()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values.
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
\code{\link{pp.logis.exp}} for \code{PP} plot and \code{\link{qq.logis.exp}} for \code{QQ} plot
}

\examples{
## Load data sets
data(bearings)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 2.36754, lambda.est = 0.01059

## Values of AIC, BIC and LogLik for the data(bearings)
abic.logis.exp(bearings, 2.36754, 0.01059)
}

\keyword{models}
