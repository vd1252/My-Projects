var mongoose = require('mongoose');
var Schema = mongoose.Schema;
autoIncrement = require('mongoose-auto-increment');

var supplierSchema = new Schema({
    cat_id: {
        type: Number
    },
    deal_id: {
        type: Number
    },
    supplier_id:
    {
        type:Number,
        require:"Enter SupplierID"
    },
    supplier_name: {
        type: String
    },
    supplier_desc:
    {
        type: String
    },
    supplier_address:
    {
        type: String
    },
    supplier_phone:
    {
        type:String
    }
});

supplierSchema.plugin(autoIncrement.plugin, {
    model: 'suppliers',
    field: 'supplier_id',
    startAt: 1001,
    incrementBy: 1
});

module.exports = mongoose.model('suppliers', supplierSchema);