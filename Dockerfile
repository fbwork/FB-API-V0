# syntax=docker/dockerfile:1
FROM ${DOCKER_REGISTERY_PATH}python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /fb
COPY requirements.txt /fb/
RUN printf "[global]\nindex = https://nexus.nextaibox.com/repository/python/pypi\nindex-url = https://nexus.nextaibox.com/repository/python/simple" >> /etc/pip.conf
RUN pip install -r requirements.txt
RUN pip install psycopg2
COPY . /fb/

CMD python /fb/manage.py migrate && python /fb/manage.py migrate admin && python /fb/manage.py runserver 0.0.0.0:${FB_PORT}
