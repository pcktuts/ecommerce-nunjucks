var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var bodyParser = require('body-parser');
var nunjucks = require('nunjucks');
var multer = require('multer');
var upload = multer();


var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var customersRouter = require('./routes/customers');
var adminProductRouter = require('./routes/admin/product');



var app = express();
nunjucks.configure('views', {
  autoescape: true,
  express: app,

});

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'nunjucks');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
// for parsing multipart/form-data
app.use(upload.array()); 

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/customers', customersRouter);
const adminPath = '/admin'
app.use(adminPath + '/products', adminProductRouter);




// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error.html');
});

module.exports = app;
