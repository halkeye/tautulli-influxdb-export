FROM python:3-alpine

COPY . /usr/src
RUN pip install /usr/src
USER nobody
CMD /bin/sh -c "exec python $(which plexpy_influxdb_export.py)"
