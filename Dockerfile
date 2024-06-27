FROM --platform=linux/x86_64 python:3.10

VOLUME /tmp

RUN mkdir /app
WORKDIR /app

ADD requirements.txt /app

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./app .

ENV PYTHONPATH /app

ENTRYPOINT ["/app/entrypoint.sh"]
