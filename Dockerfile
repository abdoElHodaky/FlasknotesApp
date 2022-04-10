FROM python:3-alpine3.14
WORKDIR /app
COPY . .
RUN apk add --no-cache build-base tzdata nodejs npm yarn sqlite-dev postgresql-dev mysql-dev clang
EXPOSE 5000
RUN pip install -r requirements.txt
CMD ["py","main.py"]
