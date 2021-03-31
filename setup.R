.libPaths(new = paste0(fs::path_home(), "/R/x86_64-pc-linux-gnu-library/4.0"))

dir.create(
    paste0(fs::path_home(), "/R/x86_64-pc-linux-gnu-library/4.0"),
    showWarnings = FALSE,
    recursive = TRUE
)

# choose random mirror located in Germany
chooseCRANmirror(
    ind = head(sample(grep("de", getCRANmirrors()$CountryCode)), n=1)
)

install.packages("digest")

install.packages("future.apply")

install.packages("hash")

install.packages("hunspell")

install.packages("jsonlite")

install.packages("koRpus")

install.packages("lwgeom")

install.packages("maptools")

install.packages("pdftools")

install.packages("pracma")

install.packages("readr")

install.packages("rlist")

install.packages("sf")

install.packages("SnowballC")

install.packages("textmineR")

install.packages("tidytext")

install.packages("tidyverse")

install.packages("tmaptools")

install.packages("units")

devtools::install_github("omegahat/Rcartogram")

devtools::install_github("chrisbrunsdon/getcartr", subdir="getcartr")
