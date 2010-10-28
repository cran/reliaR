\name{Loglogsurvival}

\alias{Loglogsurvival}
\alias{crf.loglog}
\alias{hloglog}
\alias{hra.loglog}
\alias{sloglog}

\title{Survival related functions for the Loglog distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Loglog
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}
  
\usage{
crf.loglog(x, t = 0, alpha, lambda)
hloglog(x, alpha, lambda)
hra.loglog(x, alpha, lambda)
sloglog(x, alpha, lambda)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{shape  parameter.}
    \item{lambda}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.loglog} gives the conditional reliability function (crf),
    \code{hloglog} gives the hazard function,
    \code{hra.loglog} gives the hazard rate average (HRA) function, and
    \code{sloglog} gives the survival function for the Loglog distribution.
}

\seealso{\code{\link{dloglog}} for other Loglog(Pham) distribution related functions;
}

\references{
Pham, H.(2002). 
\emph{A Vtub-Shaped Hazard Rate Function with Applications to System Safety}, International Journal of Reliability and 
Applications. ,Vol. 3, No. l,  pp. 1-16.

Pham, H.(2006). 
\emph{System Software Reliability}, Springer-Verlag.
}


\examples{
## load data set 
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.9058689 lambda.est = 1.0028228

## Reliability indicators for data(sys2):

## Reliability function
sloglog(sys2, 0.9058689, 1.0028228)

## Hazard function 
hloglog(sys2, 0.9058689, 1.0028228)

## hazard rate average(hra)
hra.loglog(sys2, 0.9058689, 1.0028228)

## Conditional reliability function (age component=0)
crf.loglog(sys2, 0.00, 0.9058689, 1.0028228)

## Conditional reliability function (age component=3.0)
crf.loglog(sys2, 3.0, 0.9058689, 1.0028228)
}

\keyword{survival}




