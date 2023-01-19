FROM anasty17/mltb:latest

WORKDIR /usr/src/RailwayFuckYou

RUN chmod 777 /usr/src/RailwayFuckYou

RUN git clone https://github.com/Sam-Max/rclone-mirror-leech-telegram-bot.git.


RUN apt install sudo

RUN echo "Sudo :- it's ON"

RUN sudo apt install wget curl
COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod 777 ./start.sh

RUN echo "Ready To abuse Railway"

CMD ["bash", "start.sh"]
