# Python-Image als Basis
FROM python:3.10-slim

# Arbeitsverzeichnis erstellen
WORKDIR /app

# Abhängigkeiten kopieren und installieren
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# App-Code kopieren
COPY app .

# Uvicorn als Server starten
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
