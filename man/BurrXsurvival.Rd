\name{BurrXsurvival}

\alias{BurrXsurvival}
\alias{crf.burrX}
\alias{hburrX}
\alias{hra.burrX}
\alias{sburrX}

\title{Survival related functions for the BurrX distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival
  function for the BurrX distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
crf.burrX(x, t = 0, alpha, lambda)
hburrX(x, alpha, lambda)
hra.burrX(x, alpha, lambda)
sburrX(x, alpha, lambda)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{shape  parameter.}
    \item{lambda}{scale parameter.}
    \item{t}{age component.}
}


\value{
    \code{crf.burrX} gives the conditional reliability function (crf),
    \code{hburrX} gives the hazard function,
    \code{hra.burrX} gives the hazard rate average (HRA) function, and
    \code{sburrX} gives the survival function for the BurrX distribution.
}

\seealso{\code{\link{dburrX}} for other BurrX distribution related functions;
}

\details{
The  hazard function is defined by
\deqn{h(x) = \frac{f(x)}{1 - F(x)},\, t > 0, 0 < F(x) < 1,}{h(x) = f(x)/(1 - F(x)),  t > 0, 0 < F(x) < 1,}
where \eqn{f(\cdot)}{f(.)} and \eqn{F(\cdot)}{F(.)} are the pdf and cdf, respectively. 
The behavior of \eqn{h(x)} allows one to characterize the aging
of the units. For example, if the failure rate is increasing (IFR
class), then the units age with time. If \eqn{h(x)} is decreasing (DFR
class), then the units improve in performance with time. Finally, if
\eqn{h(x)} is constant, then the lifetime distribution is necessarily
exponential.

There are two more aging indicators which are the following:

The failure rate average (FRA) of X is given by
\deqn{FRA(x) = \frac{H(x)}{x} = \frac{\int^{x}_{0} h(x)\,dx}{x},\, x > 0,}{FRA(x) = H(x)/x = (\int^{x}_{0} h(x) dx)/x,  x > 0,}
where \eqn{H(x)} is the cumulative hazard function. An analysis for
FRA(\eqn{x}) on \eqn{x} permits to obtain the IFRA and DFRA classes.

The survival/reliability function (s.f.) and the conditional survival of X
are defined by
\deqn{R(x) = 1 - F(x) \quad {\rm and} \quad R(x|t) = \frac{R(x+t)}{R(x)},\, x > 0,\, t > 0,\, R(\cdot) > 0,}{
R(x) = 1 - F(x)  and  R(x|t) = R(x+t)/R(x),  x > 0, t > 0, R(.) > 0,}
respectively, where \eqn{F(\cdot)}{F(.)} is the cdf of X. Similarly to
\eqn{h(x)} and \eqn{FRA(x)}, the distribution of X belongs to the
new better than used (NBU), exponential, or new worse than used (NWU)
classes, when \eqn{R(x|t) < R(x)}, \eqn{R(x|t) = R(x)},
or \eqn{R(x|t) > R(x)}, respectively.
}

\references{
Kundu, D., and Raqab, M.Z. (2005).
\emph{Generalized Rayleigh Distribution: Different Methods of Estimation},
Computational Statistics and Data Analysis, 49, 187-200.

Lawless, J.F.(2003).
\emph{Statistical Models and Methods for Lifetime Data},
John Wiley and Sons, New York.

Marshall, A. W., Olkin, I.(2007).
\emph{Life Distributions: Structure of Nonparametric, Semiparametric, and Parametric Families},
 Springer, New York.
}

\examples{
## load data set
data(bearings)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.1989515, lambda.est = 0.0130847

## Reliability indicators for data(bearings):

## Reliability function
sburrX(bearings, 1.1989515, 0.0130847)

## Hazard function
hburrX(bearings, 1.1989515, 0.0130847)

## hazard rate average(hra)
hra.burrX(bearings, 1.1989515, 0.0130847)

## Conditional reliability function (age component=0)
crf.burrX(bearings, 0.00, 1.1989515, 0.0130847)

## Conditional reliability function (age component=3.0)
crf.burrX(bearings, 3.0, 1.1989515, 0.0130847)
}

\keyword{survival}
