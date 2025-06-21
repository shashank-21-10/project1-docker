FROM python:3.13-slim

WORKDIR /usr/app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["fastapi" , "run" , "main.py"]
