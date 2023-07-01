
# Restaurant Menu

A Basic Restaurant Menu created using **Python** and **Django** containing list of food items divided in 4 catagories as Starter, Salads, Main Dishes and Desserts.

- You can edit the food items by accessing admin page with the url
```bash
  localhost:8000/admin
```
- A **Dockerfile** in the source code to create the **Docker Image** of the application.
- Bootstrap is used to design the html pages.
- By Clicking on the food items name you can open a seperate page describing rest of the details about that food.


## Run Locally

Install requirements

```bash
  pip install --no-cache-dir -r requirements.txt
```

Initialise model in database

```bash
  python manage.py makemigrations
  python manage.py migrate
```
Create super user to access admin page

```bash
  python manage.py createsuperuser
```
Run the Server

```bash
  python manage.py runserver
```

### Run with Docker
- Before building the docker image you can change the admin credentials in Dockerfile
Build the docker image

```bash
  docker build -t restro-menu .
```
Run the image
```bash
  docker run -p 8000:8000 restro-menu
```

## Screenshots

![ss1](https://github.com/AkramExp/restaurant-menu/blob/main/screenshots/ss1.png)

