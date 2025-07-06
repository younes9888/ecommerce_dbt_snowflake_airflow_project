# Airflow + dbt + Snowflake Project

# Overview
This project demonstrates how to orchestrate a dbt (Data Build Tool) pipeline using Apache Airflow, with Snowflake as the data warehouse. It is fully containerized using Docker and Docker Compose, and tested on Windows.

# Tech Stack

    dbt Core – For data transformation
    Snowflake – Data warehouse
    Apache Airflow – For orchestration
    Python – Scripting
    Git – Version control

## 📁 Project Structure

project-root/
├── dags/ # Airflow DAGs
├── dbt/ # Your dbt project
│ ├── Dockerfile # Custom Docker image for dbt-snowflake
│ ├── dbt_project.yml
│ ├── models/
│ └── profiles.yml # (ignored by git)
├── logs/ # Airflow logs (ignored by git)
├── plugins/ # Custom Airflow plugins (optional)
├── .env # Snowflake credentials (ignored by git)
├── .gitignore
└── docker-compose.yml

# Setup & Installation

## Clone the Repository

git clone https://github.com/younes9888/ecommerce_dbt_snowflake_airflow_projec.git
cd your-repo-name

## dbt snowflake connection

SNOWFLAKE_ACCOUNT=xxx.region.gcp
SNOWFLAKE_USER=your_user
SNOWFLAKE_PASSWORD=your_password
SNOWFLAKE_ROLE=your_role
SNOWFLAKE_WAREHOUSE=your_warehouse
SNOWFLAKE_DATABASE=your_db
SNOWFLAKE_SCHEMA=your_schema


# Launch the project
## Build images
docker compose build

## Initialize Airflow DB (only once)
docker compose run airflow airflow db init

## Start all services
docker compose up

## Run dbt Models
dbt run
dbt test  

Go to: http://localhost:8080
Login: admin / admin
