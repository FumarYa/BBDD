FROM mysql:5.7
CMD [ "--max_connections=10000" ]
#ejecutar script creacion de tablas
ADD script.sql /docker-entrypoint-initdb.d/script.sql
#RUN  mysql -u root < /home/contemporanicabbdd.sql