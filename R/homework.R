#' Rmarkdown template for homework
#'
#' @param nb (logical) should an Rnotebook or html document be used
#' @seealso \url{https://rstudio.github.io/rstudio-extensions/rmarkdown_templates.html#custom-formats}
#' @export
homework <- function(nb = FALSE) {
  css = system.file("config/hw.css", package = "R6018")
  html_format <- ifelse(nb, rmarkdown::html_notebook, rmarkdown::html_document)
  html_format(toc = TRUE
             ,toc_float = TRUE
             ,toc_depth = 2
             ,theme = "default"
             ,css = css
             ,df_print = pander::pander
             ,pandoc_args= "--strip-comments")
}
