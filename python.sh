apt-get update
apt-get install python3
apt-get install python3-dev

pip install virtualenv
pip install virtualenvwrapper

EXTRA_PATH=~/.extra
echo $EXTRA_PATH
echo "" >> $EXTRA_PATH
echo "" >> $EXTRA_PATH
echo "# Source virtualenvwrapper, added py setup.sh" >> $EXTRA_PATH
echo "export WORKON_HOME=~/.virtualenvs" >> $EXTRA_PATH
echo "source /usr/local/bin/virtualenvwrapper.sh" >> $EXTRA_PATH
echo "" >> $BASH_PROFILE_PATH
source $EXTRA_PATH

mkvirtualenv --python=$(which python 3) pydata

workon pydata

pip install numpy
pip install scipy
pip install pandas
pip install dask
pip install matplotlib
pip install seaborn
pip install statsmodels
pip install lifelines
pip install sktime
pip install pmdarima
pip install FATS
pip install scikit-learn
pip install scikit-optimize
pip install scikit-image
pip install imbalanced-learn
pip install metric-learn
pip install xgboost
pip install mlxtend
pip install glmnet
pip install civisml-extensions
pip install pyglmnet
pip install deslib
pip install tensorflow
pip install tensorflow-probability
pip install keras
pip install pystan
pip install pymc3
pip install jupyter
pip install jupytext
pip install ipykernel
pip install nbdime
pip install papermill[all]
pip install bokeh
pip install numba
pip install joblib
pip install sacred
pip install python-yaml
pip install ujson
pip install feather-format
pip install apache-airflow
pip install apache-airflow-providers-postgres
pip install apache-airflow-providers-amazon
pip install apache-airflow-providers-google
pip install apache-airflow-providers-microsoft-azure
pip install boto3
pip install Flask
pip install flask-sqlalchemy
pip install flask-migrate
pip install flask-wtf
pip install flask-bootstrap
pip install flask-mail
pip install pytest-flask
pip install sqlalchemy
pip install psycopg2
pip install requests
pip install requests-toolbelt
pip install click
pip install tqdm
pip install beautifulsoup4
pip install fbprophet
pip install tbats
pip install rpy2
pip install geopandas
pip install cvxopt
pip install pycaret
pip install pyomo
pip install ratelimit
pip install Boruta
pip install cassandra-driver
pip install python-jose
pip install dash
pip install plotly
pip install pygam
pip install python-pptx
pip install pyfarmhash
pip install pytest-docker-tools

deactivate


mkvirtualenv --python=$(which python 3) webdev

workon webdev

pip install requests
pip install requests-toolbelt
pip install aoihttp
pip install aoidns
pip install Flask
pip install flask-sqlalchemy
pip install flask-migrate
pip install flask-wtf
pip install flask-moment
pip install flask-bootstrap
pip install pytest-flask
pip install sqlalchemy
pip install click
pip install beautifulsoup4
pip install psycopg2
pip install molotov
pip install python-jose
pip install bcrypt
pip install ratelimit
pip install boto3

deactivate


curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
