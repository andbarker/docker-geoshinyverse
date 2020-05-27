FROM rocker/shiny-verse:3.6.1
MAINTAINER "Andrew Barker" andbarker@gmail.com

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    lbzip2 \
    libfftw3-dev \
    libgdal-dev \
    libgeos-dev \
    libgsl0-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libhdf4-alt-dev \
    libhdf5-dev \
    libjq-dev \
    liblwgeom-dev \
    libpq-dev \
    libproj-dev \
    libprotobuf-dev \
    libnetcdf-dev \
    libsqlite3-dev \
    libssl-dev \
    libudunits2-dev \
    netcdf-bin \
    postgis \
    protobuf-compiler \
    sqlite3 \
    tk-dev \
    unixodbc-dev \
  && install2.r --error \
    bs4Dash \
    cowplot \
    DBI \
    DT \
    RColorBrewer \
    RandomFields \
    RNetCDF \
    classInt \
    data.table \
    deldir \
    dplyr \
    expint \
    flextable \
    ggplot2 \
    gstat \
    hdf5r \
    kableExtra \
    leaflet \
    leaflet.extras \
    lidR \
    lubridate \
    lwgeom \
    magrittr \
    mapdata \
    mapedit \
    maptools \
    mapview \
    metR \
    ncdf4 \
    officer \
    openxlsx \
    patchwork \
    plotly \
    proj4 \
    raster \
    RColorBrewer \
    readr \
    readxl \
    rgdal \
    rgeos \
    rhandsontable \
    rlas \
    RSQLite \
    scales \
    sf \
    shiny \
    shinyalert \
    shinycssloaders \
    shinydashboard \
    shinyjs \
    shinythemes \
    shinyWidgets \
    sp \
    spacetime \
    spatstat \
    spatialreg \
    spdep \
    stringr \
    tidyr \
	  tmap \
	  units \
    geoR \
    geosphere \
    ## from bioconductor
    && R -e "BiocManager::install('rhdf5')"
    && R -e "devtools::install_github('nik01010/dashboardthemes')"
    && R -e "devtools::install_github('dreamRs/shinyWidgets')"
    && R -e "devtools::install_github('daattali/shinycssloaders')"
