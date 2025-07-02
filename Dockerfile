FROM python:3.11-slim

WORKDIR /app

# Install dependencies

COPY requirements.txt .

RUN pip install requirements.txt

EXPOSE 5000

COPY . .

CMD [ "python" , "app.py" ]
