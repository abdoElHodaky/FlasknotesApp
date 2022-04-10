FROM python:2-alpine3.14
WORKDIR /app
COPY . .
RUN apk add --no-cache build-base tzdata nodejs npm yarn sqlite-dev postgresql-dev mysql-dev clang
ENV PYTHON_ALLOW_SUPERUSER 1
ENV PIP_ALLOW_SUPERUSER 1
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["py","main.py"]
