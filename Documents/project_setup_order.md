# Project setup order

### 1. Make ignore files
    * .gitignore
    * .dockerignore

### 2. Make package dependencies files
    * requirements.txt
    * requirements-dev.txt

### 3. Make Dockerfile
    * Dockerfile
> CAUTION:
> Before make commit, Hide the base linux user clearly  

### 4. Docker build
   ```shell
    docker build .
   ```

### 5. Make docker-compose.yml
   ```shell
   docker-compose build
   ```
   ```shell
   docker-compose up
   ```

### 6. Start Django project

   > Before start Django project,
   > Do this command and check up the work directory
   >```shell
   > docker-compose run --rm app sh -c "pwd"
   >```
    * Work directory is set to /django_app in Dockerfile
    * It means, if I startproject in ".", it will be created in /django_app directory
    * This command will create
        * file "manage.py"
        * directory "/django_app/config"

   ```shell
      docker-compose run --rm app sh -c "django-admin startproject config ."
   ```

   > CAUTION:
   > Before make commit, Hide the secret key clearly   


### 7. Main DB(1st DB) setup - postgres
   * Make postgres service in docker-compose
   * Hide the DB information
   * Set the DB information in settings.py
   >CAUTION:
   > 
   >If you struggle to set the DB information in settings.py,<br>
   >Try to delete Docker volume and restart docker-compose
   >
   >Because the DB information is saved in Docker volume at the first time<br>
   >And then it is not changed even if you change the DB information in env data

   * Make migrations
   ```shell
    docker-compose run --rm app sh -c "python manage.py makemigrations"
   ```
   ```shell
     docker-compose run --rm app sh -c "python manage.py migrate"
   ```