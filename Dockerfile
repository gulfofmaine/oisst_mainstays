### Dockerfile

# Docker Base Image for R-Shiny Environment
FROM rocker/geospatial:3.6.1


# Installing R Package Dependencies
RUN install2.r --error \
    ggpmisc \
    janitor \
    here \
    lubridate \
    patchwork \
    plotly \
    noaaoceans \
    heatwaveR \
    devtools \
    kableExtra \
    knitr
    

# Installation of non-CRAN packages
RUN R -e "devtools::install_github('gulfofmaine/gmri', upgrade = 'never')"
RUN R -e "devtools::install_github('ropensci/rnaturalearth', upgrade = 'never')"
RUN R -e "devtools::install_github('ropensci/rnaturalearthhires', upgrade = 'never')"


