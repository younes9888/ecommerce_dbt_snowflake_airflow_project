from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime, timedelta

default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'start_date': datetime(2025, 7, 1),
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

dag = DAG(
    'dbt_workflow',
    default_args=default_args,
    description='dbt run and test commands',
    schedule_interval='@daily',
    catchup=False,
)

DBT_PROJECT_DIR = '/opt/airflow-dbt-snowflake/dbt/snowflake_project'
DBT_PROFILES_DIR = '/opt/airflow-dbt-snowflake/dbt'

dbt_run = BashOperator(
    task_id='dbt_run',
    bash_command=f'cd {DBT_PROJECT_DIR} && dbt run --profiles-dir {DBT_PROFILES_DIR}',
    dag=dag,
)

dbt_test = BashOperator(
    task_id='dbt_test',
    bash_command=f'cd {DBT_PROJECT_DIR} && dbt test --profiles-dir {DBT_PROFILES_DIR}',
    dag=dag,
)

dbt_run >> dbt_test
