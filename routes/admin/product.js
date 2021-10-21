var express = require('express');
var router = express.Router();
var productModel = require('../../models/product')


router.get('/create', async function(req, res, next) {
    res.render("admin/products/create.html")
});
router.post('/create', async function(req, res, next) {
    
    console.log(req.body)
    // TODO: validations and file uploads
    const product = {
        title : req.body.title,
        description: req.body.description,
        price: req.body.price,
        quantity: req.body.quantity,
        category_id: req.body.category_id,
    }
    let productCreated = await productModel.createProduct(product);   
    console.log(productCreated.affectedRows)
    res.render("admin/products/create.html")
});


module.exports = router;