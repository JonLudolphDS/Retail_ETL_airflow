FROM quay.io/astronomer/astro-runtime:11.8.0

RUN python -m venv soda_venv && source soda_venv/bin/activate && \
    pip install --no-cache-dir soda-core-bigquery==3.3.14 &&\
    pip install --no-cache-dir soda-core-scientific==3.3.14 && deactivate

RUN python -m venv dbt_venv && source dbt_venv/bin/activate && \
    pip install --no-cache-dir dbt-bigquery==1.5.3 && deactivate