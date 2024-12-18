
# POMA <img src='man/figures/logo.png' align="right" height="139" />

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
[![CodeFactor](https://www.codefactor.io/repository/github/pcastellanoescuder/POMA/badge)](https://www.codefactor.io/repository/github/pcastellanoescuder/POMA)
[![Last
Commit](https://img.shields.io/github/last-commit/pcastellanoescuder/POMA.svg)](https://github.com/pcastellanoescuder/POMA/commits/master)
[![License: GPL
v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
<!-- [![R-CMD-check](https://github.com/pcastellanoescuder/POMA/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/pcastellanoescuder/POMA/actions/workflows/R-CMD-check.yaml) -->
<!-- [![Codecov test coverage](https://codecov.io/gh/pcastellanoescuder/POMA/branch/master/graph/badge.svg)](https://codecov.io/gh/pcastellanoescuder/POMA?branch=master) -->

| *BioC* branch                                                           | Status                                                                                                                                                  | Version                                                                                                                                            | Rank                                                                                                                         |
|-------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
| [Release](http://bioconductor.org/packages/release/bioc/html/POMA.html) | [![Bioc release status](https://bioconductor.org/shields/build/release/bioc/POMA.svg)](https://bioconductor.org/checkResults/release/bioc-LATEST/POMA/) | [![BioC released version](https://img.shields.io/badge/release%20version-1.16.0-blue.svg)](https://www.bioconductor.org/packages/POMA)             | [![Rank](http://www.bioconductor.org/shields/downloads/release/POMA.svg)](https://bioconductor.org/packages/stats/bioc/POMA) |
| [Devel](http://bioconductor.org/packages/devel/bioc/html/POMA.html)     | [![Bioc devel status](https://bioconductor.org/shields/build/devel/bioc/POMA.svg)](https://bioconductor.org/checkResults/devel/bioc-LATEST/POMA/)       | [![BioC devel version](https://img.shields.io/badge/devel%20version-1.17.6-blue.svg)](https://bioconductor.org/packages/devel/bioc/html/POMA.html) | [![Rank](http://www.bioconductor.org/shields/downloads/devel/POMA.svg)](https://bioconductor.org/packages/stats/bioc/POMA)   |

<!-- badges: end -->

The `POMA` package offers a comprehensive toolkit designed for omics
data analysis, streamlining the process from initial visualization to
final statistical analysis. Its primary goal is to simplify and unify
the various steps involved in omics data processing, making it more
accessible and manageable within a single, intuitive R package.
Emphasizing on reproducibility and user-friendliness, `POMA` leverages
the standardized `SummarizedExperiment` class from Bioconductor,
ensuring seamless integration and compatibility with a wide array of
Bioconductor tools. This approach guarantees maximum flexibility and
replicability, making `POMA` an essential asset for researchers handling
omics datasets.

<!-- 
## push to Bioc (upstream remote at git@git.bioconductor.org)
git push upstream main:devel
&#10;## push to GitHub (origin remote)
git push origin main
-->

## Installation

To install the Bioconductor last release version:

``` r
# install.packages("BiocManager")
BiocManager::install("POMA")
```

To install the GitHub version:

``` r
# install.packages("devtools")
devtools::install_github("pcastellanoescuder/POMA")
```

To install the GitHub devel version:

``` r
devtools::install_github("pcastellanoescuder/POMA", ref = "devel")
```

## Citation

Castellano-Escuder et al. POMAShiny: A user-friendly web-based workflow
for metabolomics and proteomics data analysis. *PLoS Comput Biol.* 2021
Jul 1;17(7):e1009148. doi: 10.1371/journal.pcbi.1009148. PMID: 34197462;
PMCID: PMC8279420.

``` bibtex
@article{castellano2021pomashiny,
  title={POMAShiny: A user-friendly web-based workflow for metabolomics and proteomics data analysis},
  author={Castellano-Escuder, Pol and Gonz{\'a}lez-Dom{\'\i}nguez, Ra{\'u}l and Carmona-Pontaque, Francesc and Andr{\'e}s-Lacueva, Cristina and S{\'a}nchez-Pla, Alex},
  journal={PLOS Computational Biology},
  volume={17},
  number={7},
  pages={e1009148},
  year={2021},
  publisher={Public Library of Science San Francisco, CA USA}
}
```

## News

Click
[here](https://github.com/pcastellanoescuder/POMA/blob/master/NEWS.md)
for the latest package updates.
