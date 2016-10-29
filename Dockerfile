
FROM ubuntu:14.04
RUN apt-get update && apt-get install -y cowsay && apt-get install -y fortunes
ENV PATH $PATH:/usr/games
CMD fortune | cowsay


