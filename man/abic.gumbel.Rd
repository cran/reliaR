\name{abic.gumbel}

\alias{abic.gumbel}

\title{Akaike information criterion (AIC) and Bayesian information criterion (BIC)
for Gumbel distribution}

\description{
The function \code{abic.gumbel()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values
assuming an Gumbel distribution with parameters mu and sigma.}

\usage{abic.gumbel(x, mu.est, sigma.est)}

\arguments{
  \item{x}{vector of observations}
  \item{mu.est}{estimate of the parameter mu}
  \item{sigma.est}{estimate of the parameter sigma}
}

\value{
The function \code{abic.gumbel()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values.
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
\code{\link{pp.gumbel}} for \code{PP} plot and \code{\link{qq.gumbel}} for \code{QQ} plot
}

\examples{
## Load data sets
data(dataset2)
## Maximum Likelihood(ML) Estimates of mu & sigma for the data(dataset2)
## Estimates of mu & sigma using 'maxLik' package
## mu.est = 212.157, sigma.est = 151.768

## Values of AIC, BIC and LogLik for the data(dataset2)
abic.gumbel(dataset2, 212.157, 151.768)
}

\keyword{models}
