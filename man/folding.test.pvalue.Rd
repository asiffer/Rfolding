% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fold.R
\name{folding.test.pvalue}
\alias{folding.test.pvalue}
\title{Computes the p-value of the folding test}
\usage{
folding.test.pvalue(Phi, n, d)
}
\arguments{
\item{Phi}{the folding statistics}

\item{n}{sample size}

\item{d}{dimension}
}
\value{
the p-value (the lower, the more significant)
}
\description{
Computes the p-value of the folding test
}
\examples{
library(MASS)
n = 5000
d = 2
mu = c(0,0)
Sigma = matrix(c(1,0.5,1,0.5), ncol = d)
X = mvrnorm(n = n, mu = mu, Sigma = Sigma)
Phi = folding.statistics(X)
p = folding.test.pvalue(Phi,n,d)

}
