FROM python:3.6

ARG app_dir=/app/

COPY src/requirements.txt $app_dir
COPY docker-entrypoint.sh /

WORKDIR $app_dir

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["/docker-entrypoint.sh"]
