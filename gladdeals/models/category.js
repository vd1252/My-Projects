var mongoose = require('mongoose');
var Schema = mongoose.Schema;
autoIncrement = require('mongoose-auto-increment');

var categorySchema = new Schema({
  cat_id: {
    type: Number,
    required: 'Enter CategoryID'
  },
  cat_name: {
    type: String,
    required: 'Enter Category Name'
  },
  cat_image:
  {
      type:String
  },
  cat_status:
  {
      type:Number,
      default:1
  }
});

categorySchema.plugin(autoIncrement.plugin, {
    model: 'categories',
    field: 'cat_id',
    startAt: 1,
    incrementBy: 1
});

module.exports = mongoose.model('categories', categorySchema);