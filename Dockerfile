FROM library/debian:jessie
RUN apt-get update -qqq && apt-get install -qqq -y build-essential
COPY . /IA 
RUN cd /IA && rm TSP && make && \
    ./TSP Inputs/TSP_IN_01.txt && \
    ./TSP Inputs/TSP_IN_02.txt && \
    ./TSP Inputs/TSP_IN_03.txt &&\
    ./TSP Inputs/TSP_IN_04.txt && \
    ./TSP Inputs/TSP_IN_05.txt && \
    ./TSP Inputs/TSP_IN_06.txt && \
    ./TSP Inputs/TSP_IN_07.txt && \
    ./TSP Inputs/TSP_IN_08.txt && \
    ./TSP Inputs/TSP_IN_09.txt && \
    ./TSP Inputs/TSP_IN_10.txt && \
    ./TSP Inputs/TSP_IN_11.txt && \
    ./TSP Inputs/TSP_IN_12.txt 



