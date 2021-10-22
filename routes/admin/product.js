var express = require('express');
var router = express.Router();
var productModel = require('../../models/product')
var categoryModel = require('../../models/category')
// const multer  = require('multer')
// const upload = multer({ dest: 'images/products' })
const validator = require('../../validations/validator')

router.get('/', async function(req, res, next) {
    const products = await productModel.getProducts(10)
    
    res.render("admin/products/index.html", {products: products})
});

router.get('/create', async function(req, res, next) {
    const categories = await categoryModel.getCategories()
    
    res.render("admin/products/create.html", {categories: categories})
});
router.post('/create', async function(req, res, next) {
    
    let {title, description, price, quantity, category_id} = req.body;
    title = title.trim()
    description = description.trim()   
    price = price.trim()   
    quantity = quantity.trim()   
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
    const descriptionMinLength = validator.minLength(description, 10, "Description")
   
    if(typeof descriptionRequired === 'object' && descriptionRequired.constructor === Object){
        errorBag.description.push(descriptionRequired)
    }

    if(typeof descriptionMinLength === 'object' && descriptionMinLength.constructor === Object){
        errorBag.description.push(descriptionMinLength)
    }
    const priceRequired = validator.required(price, "Price")
    if(typeof priceRequired === 'object'){
        errorBag.price.push(priceRequired)
    }
    const pricePostiveNumber = validator.isPositiveNumber(price, "Price")
    if(typeof pricePostiveNumber === 'object' && pricePostiveNumber.constructor === Object ){
        errorBag.price.push(pricePostiveNumber)
    }

    const quantityRequired = validator.required(quantity, "Quantity")
    if(typeof quantityRequired === 'object' && quantityRequired.constructor === Object ){
        errorBag.quantity.push(quantityRequired)
    }

    const quantityPostiveNumber = validator.isPositiveInteger(quantity, "Quantity")
    if(typeof quantityPostiveNumber === 'object' && quantityPostiveNumber.constructor === Object ){
        errorBag.quantity.push(quantityPostiveNumber)
    }
    
    const product = {
        title : title,
        description: description,
        price: price,
        quantity: quantity,
        category_id: category_id,
    } 
    if(errorBag.title.length > 0 || errorBag.description.length > 0|| errorBag.price.length > 0 || errorBag.quantity.length > 0){
        console.log(errorBag)
        console.log("inside error block")
        const categories = await categoryModel.getCategories()
        res.render("admin/products/create.html", {
            form: product, 
            categories: categories,
            errorBag: errorBag
        })
        return;
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