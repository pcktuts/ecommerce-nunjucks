var express = require('express');
var router = express.Router();
var productModel = require('../models/product')

/* GET home page. */
router.get('/', async function(req, res, next) {
  let products = await productModel.getProducts(5);   
  
  let finalProducts = products.map(async p =>{
    
    p.images = await productModel.getProductImages(p.id)
    return p
    
  }) 
  finalProducts = await Promise.all(finalProducts);
  //console.log(finalProducts[0])
 
  res.render('index.html', { title: 'Latest Products', products: finalProducts });
});

module.exports = router;
