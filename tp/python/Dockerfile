FROM python:latest

RUN apt-get update -y

RUN wget https://dlm.mariadb.com/2678574/Connectors/c/connector-c-3.3.3/mariadb-connector-c-3.3.3-debian-bullseye-amd64.tar.gz -O - | tar -zxf - --strip-components=1 -C /usr
ENV LD_PRELOAD=/usr/lib/mariadb/libmariadb.so
ENV LD_LIBRARY_PATH=/usr/lib/mariadb
RUN pip3 install --no-cache-dir mariadb

# COPY app/ /usr/app/ -> si les modfication du fichier config on été faite en locale

RUN wget 'https://docs.google.com/uc?export=download&id=1v-6MUPYpwEiiwxMAukpC4CPfMoGKeY54' -O tp-sql.tar.gz
RUN tar -zxvf tp-sql.tar.gz tp-sql/app-python

RUN cat tp-sql/app-python/config.py >> temporaire.txt
RUN echo "import os " > tp-sql/app-python/config.py
RUN cat temporaire.txt >> tp-sql/app-python/config.py
RUN rm temporaire.txt

RUN sed -i "s/'admin'/os.environ.get('DB_USERNAME')/" tp-sql/app-python/config.py
RUN sed -i "s/'password' : 'password'/'password' : os.environ.get('DB_PASSWORD')/" tp-sql/app-python/config.py
RUN sed -i "s/'host': 'localhost'/'host' : os.environ.get('DB_HOST')/" tp-sql/app-python/config.py
RUN sed -i "s/'port': 3306/'port' : int(os.environ.get('DB_PORT'))/" tp-sql/app-python/config.py
RUN sed -i "s/'database': 'parc_informatique'/'database' : os.environ.get('DB_NAME')/" tp-sql/app-python/config.py

CMD ["python3", "tp-sql/app-python/main.py"]