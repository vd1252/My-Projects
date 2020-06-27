var mongoose = require('mongoose');
var Schema = mongoose.Schema;
autoIncrement = require('mongoose-auto-increment');

var dealSchema = new Schema({
    cat_id: {
        type: Number,
        required: 'Enter CategoryID'
    },
    deal_id: {
        type: Number,
        required: 'Enter DealID'
    },
    deal_title: {
        type: String,
        required: 'Enter Deal Name'
    },
    deal_image:
    {
        type: String
    },
    location:
    {
        type: String
    },
    valid_for:
    {
        type:String
    },
    valid_on:
    {
        type:String
    },
    price:
    {
        type:String
    },
    timings:
    {
        type:String
    },
    details:
    {
        type:String
    },
    supplier_id:
    {
        type:Number
    }
});

dealSchema.plugin(autoIncrement.plugin, {
    model: 'deals',
    field: 'deal_id',
    startAt: 101,
    incrementBy: 1
});

module.exports = mongoose.model('deals', dealSchema);