# FROM python:3.8-slim

# # Install MLflow and the necessary database driver
# RUN pip install mlflow psycopg2-binary

# # Expose the port MLflow will use
# EXPOSE 5000

# # # Environment variable for the artifact root (local directory in this case)
# # ENV ARTIFACT_ROOT /mlflow_artifacts

# # # Create and set permissions for the artifact directory
# # RUN mkdir -p $ARTIFACT_ROOT && chmod -R 777 $ARTIFACT_ROOT

# # Note: BACKEND_STORE_URI is set through the Kubernetes deployment now,
# # so no need to set it here as an ENV. Instead, ensure CMD uses it correctly.

# # Create the mlflow directory and make it writable by anyone
# RUN mkdir -p /mlflow && chmod -R 777 /mlflow

# CMD mlflow server --host 0.0.0.0 --port 5000 --backend-store-uri $BACKEND_STORE_URI --default-artifact-root /mlflow




FROM python:3.8-slim

# Install MLflow and the necessary database driver
RUN pip install mlflow psycopg2-binary

# Expose the port MLflow will use
EXPOSE 5000

# Create the mlflow directory and ensure it has broad permissions
RUN mkdir -p /mlflow && chmod -R 777 /mlflow

# Optional: Create a user to run MLflow and set ownership, if you are not running as root
# RUN useradd -m mlflowuser
# RUN chown -R mlflowuser:mlflowuser /mlflow
# USER mlflowuser

CMD mlflow server --host 0.0.0.0 --port 5000 --backend-store-uri $BACKEND_STORE_URI
