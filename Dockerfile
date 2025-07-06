FROM apache/airflow:2.7.1

USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER airflow
RUN pip install --no-cache-dir \
    "apache-airflow-providers-celery==3.3.0" \
    "apache-airflow-providers-snowflake==5.1.0" \
    "dbt-snowflake==1.5.0" \
    "snowflake-connector-python==3.0.4"