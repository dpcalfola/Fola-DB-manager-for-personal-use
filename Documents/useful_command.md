1. Remove docker-compose container
    ```shell
    docker-compose down
    ```

2. Service start and stop
   ```shell
   docker-compose up
   ```
   ```shell
    docker-compose stop
   ```

3. Clear compose container and restart
   ```shell
    docker-compose down && docker-compose build --no-cache && docker-compose up
   ```
   
4. Command to run inside container
   ```shell
   docker-compose run --rm app sh -c "pwd"
   ```

5. Remove docker volume
   ```shell
   docker volume rm fola-db-manager-for-personal-use_fola-db-postgres-data

   ```