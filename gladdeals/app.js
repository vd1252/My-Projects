var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
autoIncrement = require('mongoose-auto-increment');



var mongoose = require('mongoose');
mongoose.Promise = global.Promise;
mongoose.connect('mongodb://localhost/gladdeals', { useUnifiedTopology: true, useNewUrlParser: true, useCreateIndex: true });
var db = mongoose.connection;
autoIncrement.initialize(db);
db.once("open", function () {
  console.log("Database created");
});
db.on("error", function (e) {
  console.log(e);
});

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

require("./models/adminLogin");
require("./models/category");
require("./models/deal");
require("./models/supplier");
require("./models/user");
require("./models/review");
require("./models/supplierDetails");

var adminController = require("./controllers/adminController");
var app = express();

var allowCrossDomain = function (req, res, next) {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
  res.header('Access-Control-Allow-Headers', 'Content-Type');

  next();
}

// view engine setup
app.use(express.static(__dirname + '/views'));

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(allowCrossDomain);

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/upload', indexRouter);
app.use('/uploadDeal', indexRouter);

//admin API's
app.route("/createAdmin")
  .post(adminController.create_admin);

app.route("/loginAdmin")
  .post(adminController.admin_login);


//category API's

app.route("/category")
  .post(adminController.create_category)
  .get(adminController.list_categories);

app.route("/delCategory")
  .post(adminController.delete_category);

app.route("/editCategory")
  .post(adminController.get_category);

app.route("/updateCategory")
  .post(adminController.update_category);


//deal API's  

app.route("/deal")
  .post(adminController.create_deals)
  .get(adminController.list_deals);

app.route("/delDeal")
  .post(adminController.delete_deal);

app.route("/getDeal")
  .post(adminController.get_deals);

app.route("/getSingleDeal")
  .post(adminController.get_single_deal);

app.route("/getDealSupplier")
  .post(adminController.get_deal_supplier);

//supplier API's

app.route("/supplierAdmin")
  .post(adminController.create_supplier)
  .get(adminController.list_suppliers);

app.route("/delSupplier")
  .post(adminController.delete_supplier);


//User API's  

app.route("/user")
  .post(adminController.create_user)
  .get(adminController.list_users);


app.route("/userLogin")
  .post(adminController.user_login);

//Review API's

app.route("/userReview")
  .post(adminController.create_review)
  .get(adminController.list_reviews);

app.route("/delReview")
  .post(adminController.delete_review);


//Supplier API's

app.route("/supplierLogin")
  .post(adminController.supplier_login);

app.route("/supplierRegister")
  .post(adminController.supplier_register);

app.route("/supplierData")
  .post(adminController.get_supplier);

app.route("/editSupplierData")
  .post(adminController.get_supplier_details);

app.route("/updateSupplierData")
  .post(adminController.update_supplier);

module.exports = app;
