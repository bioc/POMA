% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PomaVolcano.R
\name{PomaVolcano}
\alias{PomaVolcano}
\title{Volcano Plot}
\usage{
PomaVolcano(
  data,
  method = "ttest",
  pval = "raw",
  pval_cutoff = 0.05,
  adjust = "fdr",
  log2fc_cutoff = NULL,
  labels = FALSE,
  paired = FALSE,
  var_equal = FALSE
)
}
\arguments{
\item{data}{A \code{SummarizedExperiment} object.}

\item{method}{Character. Indicates the statistical method to use. Options are "ttest", "mann", "limma", and "DESeq".}

\item{pval}{Character. Indicates the pvalue type to generate the volcano plot. Options are: "raw" and "adjusted".}

\item{pval_cutoff}{Numeric. Indicated the pvalue cutoff (horizontal line).}

\item{adjust}{Character, Indicates the multiple correction method. Options are: "fdr", "holm", "hochberg", "hommel", "bonferroni", "BH" and "BY".}

\item{log2fc_cutoff}{Numeric. Indicates the log2 fold change cutoff (vertical lines).}

\item{labels}{Logical. Indicates if significant labels should be plotted. Defaul is FALSE.}

\item{paired}{Logical. Indicates if the data is paired or not. Default is FALSE.}

\item{var_equal}{Logical. Indicates if the data variances are assumed to be equal or not. Default is FALSE.}
}
\value{
A \code{ggplot} object.
}
\description{
\code{PomaVolcano} generates a volcano plot. Data should not contain negative values.
}
\examples{
data("st000336")

st000336 \%>\% 
  PomaImpute() \%>\%
  PomaVolcano()
  
st000336 \%>\% 
  PomaImpute() \%>\%
  PomaVolcano(labels = TRUE)
  
st000336 \%>\% 
  PomaImpute() \%>\%
  PomaVolcano(labels = TRUE, pval = "adjusted")
}
\author{
Pol Castellano-Escuder
}
