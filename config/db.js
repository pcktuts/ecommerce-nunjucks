// get the client
const mysql = require('mysql2');
const env = require('../.env')

// create the connection to database
const pool = mysql.createPool({
    host: 'localhost',
    user: env.DB_USER,
    password: env.DB_PASSWORD,
    database: env.DB
    });
    
const promisePool = pool.promise();

module.exports = promisePool  