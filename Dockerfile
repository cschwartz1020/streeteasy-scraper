FROM --platform=linux/amd64 python:3.7.13-alpine3.16
COPY .env cron.log cron main units.json /app/
WORKDIR /app/
RUN pip install requests \
    pip install beautifulsoup4 \
    pip install python-decouple \
    pip install pytz \
    pip install twilio \
    pip install free-proxy

CMD ["./cron"]
