FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY kobo-book-downloader/ ./kobo-book-downloader/

WORKDIR /app/kobo-book-downloader

ENTRYPOINT ["python", "__main__.py"]
