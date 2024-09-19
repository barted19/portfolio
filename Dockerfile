# Użyj oficjalnego obrazu Pythona jako bazowego
FROM python:3.9-slim

# Ustaw katalog roboczy w kontenerze
WORKDIR /app

# Skopiuj plik requirements.txt i zainstaluj zależności
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Skopiuj pozostałe pliki aplikacji
COPY . .

# Otwórz port, na którym działa aplikacja
EXPOSE 8000

# Uruchom serwer Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


