var mongoose = require('mongoose');
var Schema = mongoose.Schema;
autoIncrement = require('mongoose-auto-increment');

var supplierDetailsSchema = new Schema({

    supplier_id:
    {
        type: Number,
        require: "Enter SupplierID"
    },
    supplier_email:
    {
        type: String
    },
    supplier_password:
    {
        type: String
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
        type: String
    }
});

supplierDetailsSchema.plugin(autoIncrement.plugin, {
    model: 'supplierdetails',
    field: 'supplier_id',
    startAt: 1001,
    incrementBy: 1
});

module.exports = mongoose.model('supplierdetails', supplierDetailsSchema);