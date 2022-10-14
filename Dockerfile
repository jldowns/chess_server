FROM python:3.8-slim-buster

RUN apt-get update && apt-get install -y \
    wget \
    unzip

RUN pip install chess

RUN wget https://stockfishchess.org/files/stockfish_15_linux_x64_bmi2.zip -P /home/ && \
    unzip /home/stockfish_15_linux_x64_bmi2.zip -d /home

RUN cp -r /home/stockfish_15_linux_x64_bmi2/* /home/

ADD chess_server.py /home/chess_server.py
