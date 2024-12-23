# Use the official MySQL image
FROM mysql:latest

# Set the root password, database name, and user details
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=SampleDB
ENV MYSQL_USER=vasu
ENV MYSQL_PASSWORD=Vasu10134

# Copy the schema and data SQL files into the container
COPY schema.sql /docker-entrypoint-initdb.d/
COPY data.sql /docker-entrypoint-initdb.d/

# Expose the default MySQL port
EXPOSE 3306
