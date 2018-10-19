/**
 * Benchmark
 * 
 * En este servidor se crea una conexión por cada petición de cliente
 * 
 */

var http = require('http');
var mysql = require('mysql');
const config = require('./config.json');

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

    let con = mysql.createConnection({
        host: config.db.host,
        user: config.db.usuario,
        password: config.db.password,
        database: config.db.nombre,
    });

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

    con.end();

    con = mysql.createConnection({
        host: config.db.host,
        user: config.db.usuario,
        password: config.db.password,
        database: config.db.nombre,
    });

    con.query(sqlMysqlCn, (err, results, fields) => {
        if (!err && results[0].Value > maxMysqlCn)
            maxMysqlCn = results[0].Value;
    });

    con.end();
});

server.listen(config.server.port);
console.log("Escuchando en http://localhost:"+config.server.port+"/");