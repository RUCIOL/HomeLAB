# Dockerfile
FROM python:3.10-slim

# Ustaw katalog roboczy
WORKDIR /app

# Skopiuj pliki projektu
COPY ./requirements.txt /app/requirements.txt
COPY ./main.py /app/main.py

# Zainstaluj zależności
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

# Uruchom aplikację
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
