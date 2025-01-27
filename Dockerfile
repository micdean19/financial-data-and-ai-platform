FROM apache/airflow:2.2.3
USER root
RUN apt-get update && \
apt-get install -y git
USER airflow
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt