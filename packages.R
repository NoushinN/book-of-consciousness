packages <- c(
  "bookdown",
  "rmarkdown",
  "knitr",
  "tinytex",
  "DiagrammeR",
  "ggplot2",
  "dplyr",
  "kableExtra"
)

installed <- rownames(installed.packages())
to_install <- setdiff(packages, installed)

if (length(to_install) > 0) {
  install.packages(to_install)
}

if (!tinytex::is_tinytex()) {
  message("TinyTeX is not installed. Run tinytex::install_tinytex() if PDF rendering is needed.")
}
