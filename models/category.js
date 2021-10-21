const promisePool = require('../config/db')
async function getCategories(){
    // simple query
    const [rows, _] = await promisePool.query
    (
        `SELECT * FROM categories        
        ORDER BY id DESC`, [])   
    //return rows;
    return JSON.parse(JSON.stringify(rows))
    //return rows.map((row) => { return row  });  
    
}
module.exports = {
    getCategories: getCategories
}