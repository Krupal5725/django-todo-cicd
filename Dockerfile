FROM python:3.9-slim

# Working directory
WORKDIR /app

# Upgrade pip and install Django
RUN pip install --no-cache-dir django==3.2

# Project files copy karein
COPY . .

# Port expose
EXPOSE 8000

# Container starting script: pehle migrate karega, phir server start karega
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
