FROM mysterysd/wzmlx:latest
WORKDIR /usr/src/app
RUN apt-get update -y && apt-get upgrade -y \
    && chmod 777 /usr/src/app
COPY requirements.txt .

RUN git clone https://github.com/adarshuc/leech
RUN cd leech && pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD cd leech && bash start.sh
