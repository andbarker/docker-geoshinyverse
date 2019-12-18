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
    RColorBrewer \
    RandomFields \
    RNetCDF \
    classInt \
    deldir \
    expint \
    gstat \
    hdf5r \
    leaflet \
    leaflet.extras \
    lidR \
    lwgeom \
    mapdata \
    mapedit \
    maptools \
    mapview \
    metR \
    ncdf4 \
    openxlsx \
    patchwork \
    plotly \
    proj4 \
    raster \
    rgdal \
    rgeos \
    rhandsontable \
    rlas \
    sf \
    shinyalert \
    shinycssloaders \
    shinydashboard \
    shinythemes \
    shinyWidgets \
    sp \
    spacetime \
    spatstat \
    spatialreg \
    spdep \
	  tmap \
	  units \
    geoR \
    geosphere \
    ## from bioconductor
    && R -e "BiocManager::install('rhdf5')"
    