% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_stripe_keys.R
\name{check_stripe_secret_key}
\alias{check_stripe_secret_key}
\alias{check_stripe_public_key}
\title{Set Stripe API Keys}
\usage{
check_stripe_secret_key(api_key = NULL)

check_stripe_public_key(api_key = NULL)
}
\arguments{
\item{api_key}{The public/secret keys to be set}
}
\description{
Sets system environment variables for
 \code{stripe_public_key} and \code{stripe_secret_key}
}
