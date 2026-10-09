FROM python:3.12-slim

WORKDIR /srv/site
RUN mkdir -p /srv/site/data/results /srv/site/data/img
COPY index.html /srv/site/index.html

ENV PORT=8080
EXPOSE 8080
VOLUME ["/srv/site/data"]

CMD ["sh", "-c", "python -m http.server ${PORT} --bind 0.0.0.0 --directory /srv/site"]