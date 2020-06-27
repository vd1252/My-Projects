var mongoose = require('mongoose');
var Schema = mongoose.Schema;
autoIncrement = require('mongoose-auto-increment');

var userSchema = new Schema({
    user_id: {
        type: Number
    }
    ,
    user_name: {
        type: String
    },
    user_email:
    {
        type: String
    },
    user_password: {
        type: String
    },
    user_phone:
    {
        type: String
    }
});

userSchema.plugin(autoIncrement.plugin, {
    model: 'users',
    field: 'user_id',
    startAt: 1,
    incrementBy: 1
});

module.exports = mongoose.model('users', userSchema);