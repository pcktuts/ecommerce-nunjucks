var express = require('express');
var router = express.Router();
var productModel = require('../../models/product')
var categoryModel = require('../../models/category')
// const multer  = require('multer')
// const upload = multer({ dest: 'images/products' })
const validator = require('../../validations/validator')

router.get('/create', async function(req, res, next) {
    const categories = await categoryModel.getCategories()
    
    res.render("admin/products/create.html", {categories: categories})
});
router.post('/create', async function(req, res, next) {
    
    let {title, description, price, quantity, category_id} = req.body;
    description = description.trim()
    console.log("title is", typeof title)
    let errorBag = {
        title:[],
        description: [],
        price:[],
        quantity:[],
    }
    const titleRequired = validator.required(title, "Title")
    const titleMinLength = validator.minLength(title, 5, "Title")
   
    if(typeof titleRequired === 'object' && titleRequired.constructor === Object){
        errorBag.title.push(titleRequired)
    }

    if(typeof titleMinLength === 'object' && titleMinLength.constructor === Object){
        errorBag.title.push(titleMinLength)
    }

    const descriptionRequired = validator.required(description, "Description")
    const descriptionMinLength = validator.minLength(description, 25, "Description")
   
    if(typeof descriptionRequired === 'object' && descriptionRequired.constructor === Object){
        errorBag.description.push(descriptionRequired)
    }

    if(typeof descriptionMinLength === 'object' && descriptionMinLength.constructor === Object){
        errorBag.description.push(descriptionMinLength)
    }
    if(errorBag.title != [] || errorBag.description != []){
        console.log(errorBag)
        const categories = await categoryModel.getCategories()
        res.render("admin/products/create.html", {
            form: req.body, 
            categories: categories,
            errorBag: errorBag
        })
        return;
    }
    // TODO: validations 
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