# main.py
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, World!"}
[root@node1 projekt]# ^C
[root@node1 projekt]# cat Dockerfile
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
