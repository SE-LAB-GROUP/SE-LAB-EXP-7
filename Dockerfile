FROM docker.arvancloud.ir/python:3.12

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY ./apps /app/
COPY ./notes /app/
COPY ./manage.py /app/
COPY ./wait-for-it.sh /app/

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
