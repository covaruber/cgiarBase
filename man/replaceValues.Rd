\name{replaceValues}
\alias{replaceValues}

\title{
Replace values 
}
\description{
Replace a set of value in a vector by a replacement set.
}
\usage{
replaceValues(Source, Search, Replace)
}

\arguments{
  \item{Source}{
A vector in which values need to be replaced.
}
\item{Search}{
A vector (of same class as \code{Source}) with the old values.
}
\item{Replace}{
A vector of with the replacement values, must have the same length as \code{Search}.
}
}
\details{

At high marker density, the relationship matrix is estimated as \eqn{A=W W'/c}, where \eqn{W_{ik} = X_{ik} + 1 - 2 p_k} and \eqn{p_k} is the frequency of the 1 allele at marker k.  By using a normalization constant of \eqn{c = 2 \sum_k {p_k (1-p_k)}}, the mean of the diagonal elements is \eqn{1 + f} (Endelman and Jannink 2012).

}
\value{
If return.imputed = FALSE, the \eqn{n \times n} additive relationship matrix is returned.

If return.imputed = TRUE, the function returns a list containing
\describe{
\item{$out}{A character vector of same length as \code{Source} in which the \code{Search}-values have been replaced by the corresponding \code{Replace}-values.}
}
}

\references{
None
}

\examples{

v <- sample(1:3, size = 100, replace = TRUE)
replaceValues(v, 1:3, c("Control", "Stress", "Salt"))

}