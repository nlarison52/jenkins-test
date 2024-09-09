FROM python:3.7-slim

# Set the working directory
WORKDIR /app

COPY . .

CMD ["python", "test.py"]