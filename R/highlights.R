highlight <- function(string, color = "skyblue") {
  if (params$draft) {
    return(paste0("<span style=\"background-color:", color, "\">",
                  string, "</span>"))
  }
  force(string)
}

checkme <- function(string) {
  if (params$draft) {
    return(paste0("<div style=\"background-color:yellow\">- \u25A2 ",
                  string, "</div>"))
  }
  force(string)
}
