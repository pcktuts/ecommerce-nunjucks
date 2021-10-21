var express = require('express');
var router = express.Router();
var productModel = require('../../models/product')
var categoryModel = require('../../models/category')
// const multer  = require('multer')
// const upload = multer({ dest: 'images/products' })

router.get('/create', async function(req, res, next) {
    const categories = await categoryModel.getCategories()
    
    res.render("admin/products/create.html", {categories: categories})
});
router.post('/create', async function(req, res, next) {
    
    console.log(req.files)
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
    console.log(productCreated)
    if(productCreated.affectedRows == 1){
        // product created, now upload the images
        req.files.map(async e=> {
            //remove `public` from e.path
            await productModel.createProductImages(e.path.substring(6), productCreated.insertId);  
        })
    }
    res.render("admin/products/create.html")
});


module.exports = router;