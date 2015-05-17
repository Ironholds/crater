#' @title A simple example of Rust code integrated into an R package
#' @name crater
#' @description This is (currently) an example package. Duncan Temple-Lang
#' wrote a little demonstrator for calling rust code from R: this wraps that in
#' a package interface and demonstrates how seamless the
#' result can look to the end user.
#'
#' @useDynLib libcrater
#' @docType package
#' @importFrom Rffi prepCIF callCIF
#' @aliases crater crater-package
NULL

#'@title multiply a number by 100
#'
#'@param x a number
#'
#'@export
multiply_by_100 <- function(x){
  callCIF(prepCIF(doubleType, list(doubleType)), "multiply_by_100", x)
}

#'@title multiply a number by 100
#'
#'@param x a number
#'
#'@export
multiply_by_10 <- function(x){
  callCIF(prepCIF(sint32Type, list(sint32Type)), "multiply_by_10", x)
}
