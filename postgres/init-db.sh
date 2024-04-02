#!/bin/bash
set -e

# Create the 'mlflow' database
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -c "CREATE DATABASE mlflow;"

# Grant all privileges on the 'mlflow' database to the 'user' role
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -c "GRANT ALL PRIVILEGES ON DATABASE mlflow TO user;"

# Grant the 'CREATEDB' privilege to the 'user' role (optional)
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -c "ALTER USER user CREATEDB;"
