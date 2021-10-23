var express = require('express');
var router = express.Router();
var userModel = require('../../models/user')
// const multer  = require('multer')
// const upload = multer({ dest: 'images/products' })
const validator = require('../../validations/validator')
var md5 = require('md5');

router.get('/login', async function(req, res, next) {
    
    res.render('admin/login.html');

})

router.post('/login', async function(req, res, next) {
    let {email, password} = req.body
    console.log(password, md5(password))
    const result = await userModel.login(email, md5(password), "admin")
    console.log(result)
    if(result.length === 1 ){
        //login success
        console.log("login ok")
        req.session['currentUser'] = result[0]
        res.redirect('/admin/products');
        return;
    }
    res.render('admin/login.html');
})

router.get('/logout', async function(req, res, next) {
    req.session['currentUser'] = null;
    res.redirect('/admin/login');
})

module.exports = router;