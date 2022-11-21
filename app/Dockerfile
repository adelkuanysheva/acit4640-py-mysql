FROM python:3

RUN useradd -m -d /app backend
RUN apt-get -q update && apt-get -q install -y gettext-base
RUN apt-get -q install -y netcat

USER backend
WORKDIR /app

RUN cp -r ../backend /app/src 

RUN python -m pip install -r /app/src/requirements.txt

WORKDIR /app/src

COPY backend.test.template /app/src
COPY --chmod=777 app.sh /app/src
COPY --chmod=777 start.sh /app/src
COPY --chmod=777 insert_data.sh /app/src

RUN wget -qq https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh && chmod a+x wait-for-it.sh

EXPOSE 8000

CMD ["/bin/bash", "app.sh"]
