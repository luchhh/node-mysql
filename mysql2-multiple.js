/**
 * Benchmark
 * 
 * En este servidor se crea una conexión por cada petición de cliente
 * 
 * Si el servidor Mysql se reinicia durante un benchmark
 * la librería mysql2 lanza varias excepciones
 * 
 */

var http = require('http');
var mysql = require('mysql2');
const config = require('./config.json');

var _tabla = "libro";
var sql = "SELECT * FROM "+_tabla+" LIMIT 10";

var server = http.createServer( (req, res) => {

    const con = mysql.createConnection({
        host: config.db.host,
        user: config.db.usuario,
        password: config.db.password,
        database: config.db.nombre,
    });

    con.execute(sql, (err, results, fields) => {

        if(err){
            //res.writeHead(500, {'Content-Type': 'text/html'});
            //res.write('Error de conexion con DB');
            //res.end();
            console.log(err);
        }else{
            res.writeHead(200, {'Content-Type': 'application/json; charset=UTF-8'});
            res.write(JSON.stringify({"data":results}));
            res.end();
        }
    });

    con.end();
});

server.listen(config.server.port);
console.log("Escuchando en http://localhost:"+config.server.port+"/");