#' Library Summary
#' Provides a brief summary of the package libraries on your computer
#'
#' @return a data.frame containing the count of packages
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function(sizes = FALSE) {
  if(!is.logical(sizes)){
    stop("Sizes must be a logial function (TRUE/FALSE)")
  }
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  pkg_df
}
