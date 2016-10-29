FROM python:3.5
MAINTAINER Robus Gauli <robusgauli@gmail.com>
RUN apt-get update
ADD ./webapp/requirements.txt /tmp/requirements.txt
RUN pip install -qr /tmp/requirements.txt
ADD ./webapp /opt/webapp/
WORKDIR /opt/webapp
EXPOSE 5000
CMD ["python","app.py"]


