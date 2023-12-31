% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PomaLimma.R
\name{PomaLimma}
\alias{PomaLimma}
\title{Differential Expression Analysis Using \code{limma}}
\usage{
PomaLimma(data, contrast = NULL, covs = NULL, adjust = "fdr", weights = FALSE)
}
\arguments{
\item{data}{A \code{SummarizedExperiment} object.}

\item{contrast}{Character. Indicates the comparison. For example, "Group1-Group2" or "control-intervention".}

\item{covs}{Character vector. Indicates the names of \code{colData} columns to be included as covariates. Default is NULL (no covariates). If not NULL, a limma model will be fitted using the specified covariates. Note: The order of the covariates is important and should be listed in increasing order of importance in the experimental design.}

\item{adjust}{Character. Indicates the multiple comparisons correction method. Options are: "fdr", "holm", "hochberg", "hommel", "bonferroni", "BH" and "BY".}

\item{weights}{Logical. Indicates whether the limma model should estimate the relative quality weights for each group. See \code{?limma::arrayWeights()}.}
}
\value{
A \code{tibble} with the results.
}
\description{
\code{PomaLimma} uses the classical \code{limma} package to compute differential expression analysis.
}
\examples{
data("st000284")

st000284 \%>\%
  PomaNorm() \%>\%
  PomaLimma(contrast = "Healthy-CRC", adjust = "fdr")
}
\references{
Matthew E. Ritchie, Belinda Phipson, Di Wu, Yifang Hu, Charity W. Law, Wei Shi, Gordon K. Smyth, limma powers differential expression analyses for RNA-sequencing and microarray studies, Nucleic Acids Research, Volume 43, Issue 7, 20 April 2015, Page e47, https://doi.org/10.1093/nar/gkv007
}
\author{
Pol Castellano-Escuder
}
