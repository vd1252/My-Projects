var mongoose = require('mongoose');
var Schema = mongoose.Schema;
autoIncrement = require('mongoose-auto-increment');

var reviewSchema = new Schema({
    review_id: {
        type: Number
    },
    review_email: {
        type: String
    },
    review_title:
    {
        type:String
    },
    review_data:
    {
        type: String
    }
});

reviewSchema.plugin(autoIncrement.plugin, {
    model: 'reviews',
    field: 'review_id',
    startAt: 1,
    incrementBy: 1
});

module.exports = mongoose.model('reviews', reviewSchema);