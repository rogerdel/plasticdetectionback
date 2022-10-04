FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /app

RUN apt-get update -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN apt-get install python3-tk -y
RUN apt-get install python3-opencv -y

COPY install.txt .
RUN pip3 install -r install.txt

COPY . .

CMD ["python3", "main.py"]