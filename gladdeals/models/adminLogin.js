var mongoose = require('mongoose');
var Schema = mongoose.Schema;


var AdminLoginSchema = new Schema({
  username: {
    type: String,
    required: 'Enter UserName'
  },
  password: {
    type: String,
    required: 'Enter Password'
  }
});

module.exports = mongoose.model('adminlogins', AdminLoginSchema);