\name{abic.expo.logistic}

\alias{abic.expo.logistic}

\title{Akaike information criterion (AIC) and Bayesian information criterion (BIC)
for Exponentiated Logistic(EL) distribution}

\description{
The function \code{abic.expo.logistic()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values
assuming an Exponentiated Logistic(EL) distribution with parameters alpha and beta.}

\usage{abic.expo.logistic(x, alpha.est, beta.est)}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
}

\value{
The function \code{abic.expo.logistic()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values.
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
\code{\link{pp.expo.logistic}} for \code{PP} plot and \code{\link{qq.expo.logistic}} for \code{QQ} plot
}

\examples{
## Load data sets
data(dataset2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(dataset2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 5.31302, beta.est = 139.04515

## Values of AIC, BIC and LogLik for the data(dataset2)
abic.expo.logistic(dataset2, 5.31302, 139.04515)
}

\keyword{models}
