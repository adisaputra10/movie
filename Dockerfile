# Gunakan image Python resmi sebagai dasar
FROM python:3.8-slim

# Tetapkan direktori kerja di dalam kontainer
WORKDIR /app

# Salin file requirements.txt ke dalam kontainer untuk menginstal dependensi
COPY requirements.txt .

# Instal dependensi menggunakan pip
RUN pip install --no-cache-dir -r requirements.txt

# Salin seluruh konten proyek ke dalam kontainer
COPY . .

# Ekspose port yang digunakan oleh aplikasi Django, biasanya 8000
EXPOSE 8000

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
