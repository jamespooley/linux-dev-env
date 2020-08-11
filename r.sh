apt install apt-transport-https software-properties-common
apt-key adv \
  --keyserver keyserver.ubuntu.com \
  --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
add-apt-repository \
  'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'

apt update
apt install r-base
apt install r-base-dev
apt install build-essential
apt install libcurl4-openssl-dev libssl-dev libxml2-dev

add-apt-repository -y "ppa:marutter/rutter3.5"
add-apt-repository -y "ppa:marutter/c2d4u3.5"
apt update
apt install r-cran-rstan

if [ -n $R_LIBS ]; then
  export R_LIBS=~/local/R/library:$R_LIBS
else
  export R_LIBS=~/local/R/library
fi

Rscript -e 'install.packages(c(\
  "tidyverse", \
  "rlang", \
  "data.table", \
  "processx", \
  "devtools", \
  "vroom", \
  "readxl", \
  "repurrrsive", \
  "distributional", \
  "profvis", \
  "lubridate", \
  "broom", \
  "tidytext", \
  "tidymodels", \
  "tidybayes",
  "rstan", \
  "rstanarm", \
  "mlogit", \
  "DBI", \
  "dbplyr", \
  "config", \
  "plotly", \
  "scales", \
  "ggforce", \
  "gganimate", \
  "shiny", \
  "shinyWidgets", \
  "shinydashboard", \
  "shinybs", \
  "shinycssloaders", \
  "golem", \
  "shinyloadtest", \
  "shinytest", \
  "RPostgres", \
  "aws.s3", \
  "bigrquery", \
  "httr", \
  "plumber", \
  "forecast", \
  "xts", \
  "zoo", \
  "urca", \
  "CausalImpact", \
  "forecastML", \
  "fables", \
  "tsibble", \
  "feasts", \
  "modeltime", \
  "tsutils", \
  "pammmtools", \
  "bsts", \
  "bayesplot", \
  "assertive", \
  "testthat", \
  "here", \
  "withr", \
  "blogdown", \
  "renv", \
  "pool", \
  "gratia", \
  "mgcv", \
  "timevis"
))'

Rscript -e 'devtools::install_github("cnchapman/choicetools")'
Rscript -e 'devtools::install_github("google/amss")'
Rscript -e 'devtools::install_github("gadenbuie/rsthemes")'
Rscript -e 'devtools::install_github("gadenbuie/shrtcts")'

apt install gdebi-core
curl -Llso \
  "https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5033-amd64.deb" ~/Downloads
gdebi ~/Downloads/rstudio-1.2.5033-amd64.deb
rm ~/Downloads/rstudio-1.2.5033-amd64.deb


git clone https://github.com/jalvesaq/colorout.git
R CMD INSTALL colorout
