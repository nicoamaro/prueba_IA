FROM library/debian:jessie 
RUN apt-get update && apt-get install -y build-essential

COPY . /IA 

RUN cd /IA && rm TSP && make

CMD cd /IA && ./TSP Inputs/TSP_IN_01.txt 

