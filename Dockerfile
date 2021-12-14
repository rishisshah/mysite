FROM python:3
WORKDIR /user/src/app
COPY . .
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

RUN pip install -r requirements.txt


EXPOSE 8081
CMD ["python", "manage.py", "runserver", "0.0.0.0:8081"]