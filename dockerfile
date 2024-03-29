FROM python:3.10

ENV PYTHONUNBUFFERED 1
ENV PYTHONWRITEBODYCODE 1
ENV DEBUG=True

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY . /app/

COPY .env /app/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]