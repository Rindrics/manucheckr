#' @param string String to wrap with html tag
#' @param color Color to use for background
#' @param tag Tag to use for wrapping \code{string}
wrap_html_bgcolor <- function(string, color, tag) {
  paste0("<", " style=\"background-color:", color, "\">",
         string,
         "</", tag, ">")
}

#' Generate html code with highlighted string
#'
#' Use this function with \code{params} function of Rmarkdown.
#' @inheritParams wrap_html_bgcolor
#' @export
highlight <- function(string, color = "skyblue") {
  if (params$draft) {
    return(wrap_html_bgcolor(string, color = color, tag = "span"))
  }
  force(string)
}

#' Generate html code with highlighted string with line break
#'
#' Use this function with \code{params} function of Rmarkdown.
#' @inheritparams wrap_html_bgcolor
#' @export
checkme <- function(string, color = yellow) {
  if (params$draft) {
    return(wrap_html_bgcolor(paste0("- \u25A2", string), color = color, tag = "div"))
  }
  force(string)
}
