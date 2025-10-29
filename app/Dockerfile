#Docker file created from the application solution to build an image and push it to ACR
FROM python:3.11-slim
WORKDIR /app
COPY src/ .
RUN pip install flask
CMD ["python", "app.py"]