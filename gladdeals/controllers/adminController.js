var mongoose = require('mongoose'),

AdminLogin = mongoose.model('adminlogins');
category = mongoose.model('categories');
deal = mongoose.model('deals');
supplier = mongoose.model('suppliers');
user = mongoose.model('users');
review = mongoose.model('reviews');
supplierDetails = mongoose.model('supplierdetails');

//admin API's

exports.create_admin = function (req, res) {
  var admin = new AdminLogin(req.body);
  admin.save(function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};

exports.admin_login = function (req, res) {
  let username = req.body.username;
  let password = req.body.password;
  console.log(req.body);
  AdminLogin.find({ $and: [{ "username": username }, { "password": password }] }, function (err, task) {
    if (err)
      res.send(err);
    if (task.length > 0) {
      res.json({ "result": "success" });
    }
    else {
      res.json({ "result": "failed" });
    }
  });
};

//Category API's

exports.create_category = function (req, res) {
  var cat = new category(req.body);
  cat.save(function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};


exports.list_categories = function (req, res) {
  category.find({}, function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};

exports.delete_category = function (req, res) {
  category.remove({
    _id: req.body.id
  }, function (err, task) {
    if (err)
      res.send(err);
    res.json({ message: 'Task successfully deleted' });
  });
};

exports.get_category = function (req, res) {
  var id = req.body.id;
  category.find({ _id: id }, function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};

exports.update_category = function (req, res) {
  category.findOneAndUpdate({ _id: req.body._id }, req.body, { new: true }, function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};



//deal API's

exports.create_deals = function (req, res) {
  var dealData = new deal(req.body);
  dealData.save(function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};


exports.list_deals = function (req, res) {
  deal.find({}, function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};

exports.delete_deal = function (req, res) {
  deal.remove({
    _id: req.body.id
  }, function (err, task) {
    if (err)
      res.send(err);
    res.json({ message: 'Task successfully deleted' });
  });
};


exports.get_deals = function (req, res) {
  var id = req.body.id;
  deal.find({cat_id: id }, function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};


//supplier API's


exports.create_supplier = function (req, res) {
  var supplierData = new supplier(req.body);
  supplierData.save(function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};


exports.list_suppliers = function (req, res) {
  supplierDetails.find({}, function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};

exports.delete_supplier = function (req, res) {
  supplier.remove({
    _id: req.body.id
  }, function (err, task) {
    if (err)
      res.send(err);
    res.json({ message: 'Task successfully deleted' });
  });
};


//user API's


exports.create_user = function (req, res) {
  var userData = new user(req.body);
  userData.save(function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};


exports.list_users = function (req, res) {
  user.find({}, function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};


exports.user_login = function (req, res) {
  let username = req.body.user_email;
  let password = req.body.user_password;
  console.log(req.body);
  user.find({ $and: [{ "user_email": username }, { "user_password": password }] }, function (err, task) {
    if (err)
      res.send(err);
    if (task.length > 0) {
      res.json({ "result": "success" });
    }
    else {
      res.json({ "result": "failed" });
    }
  });
};


//review API's


exports.create_review = function (req, res) {
  var userReview = new review(req.body);
  userReview.save(function (err, task) {
    if (err)
      res.send(err);
      res.json({ "result": "success" });
  });
};


exports.list_reviews = function (req, res) {
  review.find({}, function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};

exports.delete_review = function (req, res) {
  review.remove({
    _id: req.body.id
  }, function (err, task) {
    if (err)
      res.send(err);
    res.json({ message: 'Task successfully deleted' });
  });
};

//ShowDeal API

exports.get_single_deal=function(req,res)
{
  var id = req.body.id;
  deal.aggregate([
    {"$match":{"deal_id":parseInt(id)}},
    {"$lookup":{
      "from":"suppliers",
      "localField":"supplier_id",
      "foreignField":"supplier_id",
      "as":"dealCompleteData"
    }}, 
  ]).exec(function(err,result)
  {
    if(err)
    {
      throw(err);
    }
    res.json(result);
  });
}


exports.get_deal_supplier = function (req, res) {
  let supplierID = req.body.id;
  console.log(supplierID);
  deal.find({ "supplier_id": supplierID } , function (err, task) {
    if (err)
      res.send(err);
    
    res.json(task);
  });
};

//Supplier Section API

exports.supplier_login = function (req, res) {
  let email = req.body.supplier_email;
  let password = req.body.supplier_password;
  supplierDetails.find({ $and: [{ "supplier_email": email }, { "supplier_password": password }] }, function (err, task) {
    if (err)
      res.send(err);
    console.log(task);  
    if (task.length > 0) {
      res.json({ "result": "success","supplierId":task[0].supplier_id});
    }
    else {
      res.json({ "result": "failed" });
    }
  });
};


exports.supplier_register = function (req, res) {
  var supplier = new supplierDetails(req.body);
  supplier.save(function (err, task) {
   
        res.json({ "result": "success" });
      
  });
};

exports.get_supplier = function (req, res) {
  let supplierID = req.body.id;
  console.log(supplierID);
  supplierDetails.find({ "supplier_id": supplierID } , function (err, task) {
    if (err)
      res.send(err);
    
    res.json(task);
  });
};


exports.get_supplier_details = function (req, res) {
  var id = req.body.id;
  supplierDetails.find({ _id: id }, function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};

exports.update_supplier = function (req, res) {
  supplierDetails.findOneAndUpdate({ _id: req.body._id }, req.body, { new: true }, function (err, task) {
    if (err)
      res.send(err);
    res.json(task);
  });
};
