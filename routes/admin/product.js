var express = require('express');
var router = express.Router();
var productModel = require('../../models/product')


router.get('/create', async function(req, res, next) {
    res.render("admin/products/create.html")
});
router.post('/create', async function(req, res, next) {
    
    console.log(req.body.title)
    // listen on field event for title
    
    res.render("admin/products/create.html")
});


module.exports = router;