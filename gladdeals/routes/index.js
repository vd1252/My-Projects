var express = require('express');
var router = express.Router();
var multer = require('multer');
var category = require("../models/category");
var Deal = require("../models/deal");

var path = require('path');
var imageName;
var storage = multer.diskStorage({
  destination: function (req, file, callback) {
    callback(null, './public/uploads');
  },

  filename: function (req, file, callback) {
    var fname = file.originalname;
    imageName = fname;
    callback(null, fname);
  }
});


var upload = multer({ storage: storage })


/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: 'Express' });
});


router.post('/upload', upload.single('file'), (req, res, next) => {
  var name = req.body.name;
  var imageUrl = "http://localhost:3000/uploads/" + imageName;


  var cat = new category({ "cat_name": name, "cat_image": imageUrl });
  cat.save(function (err, task) {
    if (err)
      res.send(err);
    res.json({ "result": "success" });
  });
})

router.post('/uploadDeal', upload.single('file'), (req, res, next) => {
  
  var imageUrl1 = "http://localhost:3000/uploads/" + imageName;
  var Data = {
    "cat_id":req.body.cat_id,
    "deal_title":req.body.deal_title,
    "deal_image":imageUrl1,
    "location":req.body.location,
    "valid_for":req.body.valid_for,
    "valid_on":req.body.valid_on,
    "price":req.body.price,
    "timings":req.body.timings,
    "details":req.body.details,
    "supplier_id":req.body.supplier_id
  };
  console.log(Data);

  var deal = new Deal(Data);
  deal.save(function (err, task) {
    if(err)
    {
      console.log(err);
    }
    res.json({ "result": "success" });
  });
})
module.exports = router;
