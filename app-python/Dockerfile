FROM ubuntu:latest 
# image de base 

RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential

COPY requirements.txt /usr/src/app/ 
# docker cp requirements.txt /usr/src/app
RUN pip3 install --no-cache-dir -r /usr/src/app/requirements.txt
# installation des dépendances python de l'application

COPY app.py /usr/src/app/

EXPOSE 5000

CMD ["python3", "/usr/src/app/app.py"]
