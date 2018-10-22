# Conexiones a base de datos mysql desde NodeJS

Benchmark de las distintas estrategias para crear conexiones a base de datos mysql desde NodeJS

1. Clonar el repositorio `$git clone https://github.com/luchhh/node-mysql.git nodemysql`
2. Instalar la base de datos de ejemplo: data_ejemplo.sql
3. Copiar el archivo config.ejemplo.json a config.json
4. Modificar el archivo config.json con los datos de base de datos y URL de la aplicación correctos
5. Desde el directorio nodemysql ejecutar npm update para instalar las dependencias
6. Ejecutar `$node simple.js` o `$node *.js` donde * es cualquiera de los archivos que están en la raíz
7. Visitar http://localhost:8080/
8. Las pruebas para el benchmark se realizan con la herramienta "ab" incluída en Apache: `$ab -c50 -n15000 http://localhost:8080/` donde **n** es la cantidad total de peticiones que simulará la herramienta y **c** es la cantidad de hilos concurrentes que simulará (número de usuarios concurrentes)
