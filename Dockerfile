FROM python:3.11

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

EXPOSE 10000

CMD ["streamlit","run","src/app.py","--server.port=10000","--server.address=0.0.0.0"]
