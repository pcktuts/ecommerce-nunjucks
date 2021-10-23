const promisePool = require('../config/db')
async function login(email, password, role="customer"){
    // simple query
    const [rows, _] = await promisePool.query
    (
        `SELECT * FROM users 
        WHERE email = ? AND password = ? AND role = ?       
        `, [email, password, role])   
    //return rows;
    return JSON.parse(JSON.stringify(rows))
    //return rows.map((row) => { return row  });  
    
}
module.exports = {
    login: login
}