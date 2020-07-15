FROM python:3.8-slim
RUN mkdir /app
WORKDIR /app
ADD requirements.txt /app
RUN pip3 install -r requirements.txt
ADD . /app
RUN chmod +x ./entrypoint.sh
EXPOSE 5000
ENTRYPOINT ["sh", "entrypoint.sh"]