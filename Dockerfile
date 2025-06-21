FROM python:3.13-slim

WORKDIR /usr/app

COPY . .

RUN pip install -r requirements.txt

CMD ["fastapi" , "run" , "main.py"]
