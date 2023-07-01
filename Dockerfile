FROM python
WORKDIR /app
ENV PYTHONUNBUFFERED 1 
ENV DJANGO_SUPERUSER_USERNAME admin
ENV DJANGO_SUPERUSER_PASSWORD password
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN python manage.py makemigrations
RUN python manage.py migrate
RUN python manage.py createsuperuser --email=admin@admin.com --noinput
EXPOSE 8000
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]