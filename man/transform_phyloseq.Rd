% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transform_phyloseq.R
\name{transform_phyloseq}
\alias{transform_phyloseq}
\title{Data Transformations for phyloseq Objects}
\usage{
transform_phyloseq(x, transformation = "compositional", target = "OTU")
}
\arguments{
\item{x}{\code{\link{phyloseq-class}} object}

\item{transformation}{Transformation to apply. The options include:
'compositional' (ie relative abundance), 'Z', 'log10', 'hellinger',
'identity', 'clr', 'ilr',
 or any method from the vegan::decostand function.}

\item{target}{Apply the transformation for 'sample' or 'OTU'.
Does not affect the log transformation.}
}
\value{
Transformed \code{\link{phyloseq}} object
}
\description{
Standard transformations for \code{\link{phyloseq-class}}.
}
\details{
The relative abunance are returned as percentages in [0,
  100]. The Hellinger transformation is square root of the relative
  abundance but instead given at the scale [0,1].
}
\examples{
\dontrun{

  # OTU relative abundances
  xt <- transform_phyloseq(x, "relative.abundance", "OTU")

  # Z-transformation for OTUs
  xt <- transform_phyloseq(x, "Z", "OTU")

  # Z-transformation for samples
  xt <- transform_phyloseq(x, "Z", "sample")

  # Log10 transformation (log(1+x) if the data contains zeroes)
  xt <- transform_phyloseq(x, "log10")

}
}
\keyword{utilities}

