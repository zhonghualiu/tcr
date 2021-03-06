% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/strtools.R
\name{find.similar.sequences}
\alias{find.similar.sequences}
\alias{exact.match}
\alias{hamming.match}
\alias{levenshtein.match}
\title{Find similar sequences.}
\usage{
find.similar.sequences(.data, .patterns = c(), .method = c('exact', 'hamm', 'lev'),
                       .max.errors = 1, .verbose = T, .clear = F)

exact.match(.data, .patterns = c(), .verbose = T)

hamming.match(.data, .patterns = c(), .max.errors = 1, .verbose = T)

levenshtein.match(.data, .patterns = c(), .max.errors = 1, .verbose = T)
}
\arguments{
\item{.data}{Vector of strings.}

\item{.patterns}{Character vector of sequences, which will be used for searching for neighbours.}

\item{.method}{Which method use: 'exact' for exact matching, 'hamm' for Hamming Distance, 'lev' for Levenshtein distance.}

\item{.max.errors}{Max Hamming or Levenshtein distance between strings. Doesn't use in 'exact' setting.}

\item{.verbose}{Should function print progress or not. // DON'T USE IT}

\item{.clear}{if T then remove all sequences with character "*" or "~".}
}
\value{
Matrix with two columns [i,j], dist(data(i), data(j)) <= .max.errors.
}
\description{
Return matrix M with two columns. For each element in row i and column j M[i,j] => distance between pattern(i) and data(j) sequences equal to or less than .max.errors.
This function will uppercase .data and remove all strings, which have anything than A-Z letters.
}
