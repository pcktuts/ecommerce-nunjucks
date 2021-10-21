const promisePool = require('../config/db')
async function getProducts(limit=5){
    // simple query
    const [rows, _] = await promisePool.query
    (
        `SELECT * FROM products        
        ORDER BY id DESC LIMIT ?`, [limit])   
    //return rows;
    return JSON.parse(JSON.stringify(rows))
    //return rows.map((row) => { return row  });  
    
}
async function getProductImages(id){
    // simple query
    const [rows, _] = await promisePool.query
    (
        `SELECT * FROM product_images 
        WHERE product_id = ?
        ORDER BY id ASC`, [id])  

    return JSON.parse(JSON.stringify(rows))  
    //return rows.map((row) => { return row  });  
    
}
async function createProduct(product){
    // simple query
    const [rows, _] = await promisePool.query
    (
        `INSERT INTO products
        (title, description, price, quantity, category_id) 
        VALUES(?, ?, ?, ?, ?)
        `, [product.title, product.description, product.price, product.quantity, product.category_id])  

    return JSON.parse(JSON.stringify(rows))  
    //return rows.map((row) => { return row  });  
    
}

module.exports = {
    getProducts: getProducts,
    getProductImages: getProductImages,
    createProduct: createProduct,
}
