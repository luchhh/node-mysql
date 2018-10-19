/**
 * Benchmark
 * 
 * En este servidor sólo se crea una conexión y se comparte entre todas
 * las conexiones de clientes.
 * 
 */

var http = require('http');
var mysql = require('mysql');
const config = require('./config.json');

const con = mysql.createConnection({
    host: config.db.host,
    user: config.db.usuario,
    password: config.db.password,
    database: config.db.nombre,
});

var _tabla = "libro";
var sql = "SELECT * FROM "+_tabla+" LIMIT 10";
var sqlMysqlCn = "SHOW STATUS WHERE `variable_name` = 'Threads_connected'";
var maxMysqlCn = 0;

var server = http.createServer( (req, res) => {

    if(req.url == "/stats"){
        res.writeHead(200, {'Content-Type': 'text/html; charset=UTF-8'});
        res.write("Máximo nro de conexiones : "+maxMysqlCn);
	    res.end();
        return;
    }

    con.query(sql, (err, results, fields) => {

        if(err){
            res.writeHead(500, {'Content-Type': 'text/html'});
	        res.write('Error de conexion con DB');
	        res.end();
        }else{
            res.writeHead(200, {'Content-Type': 'application/json; charset=UTF-8'});
            res.write(JSON.stringify({"data":results}));
	        res.end();
        }
    });

    con.query(sqlMysqlCn, (err, results, fields) => {
        if (!err && results[0].Value > maxMysqlCn)
            maxMysqlCn = results[0].Value;
    });     
});

server.listen(config.server.port);
console.log("Escuchando en http://localhost:"+config.server.port+"/");