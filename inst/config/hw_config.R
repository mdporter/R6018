#-- code chunk options
knitr::opts_chunk$set(error=TRUE,        # Keep compiling upon error
                      collapse=FALSE,    # collapse by default
                      echo=TRUE,         # echo code by default
                      comment = "#>",    # change comment character
                      fig.width = 5,     # set figure width
                      fig.align = "center",# set figure position
                      out.width = "49%", # set width of displayed images
                      warning=TRUE,      # show R warnings
                      message=TRUE)      # show R messages

#-- Display Settings
options(width = 80, digits = 4)
options(dplyr.print_min = 6, dplyr.print_max = 6)

#-- ggplot2 theme
ggplot2::theme_set(ggplot2::theme_bw())
