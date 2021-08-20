const mongoose = require('mongoose');

var schema = new mongoose.Schema({
    userName: {
        type: String,
        require: true
    },

    firstName: {
        type: String,
        require: true
    },

    lastName: {
        type: String,
        require: true
    },

    email: {
        type: String,
        require: true,
        unique: true
    },

    phone: {
        type: String,
        require: true,
        unique: false
    },

    password: {
        type: String,
        required: true
    },

    date: {
        type: String,
        default: Date()
    },

    gender: {
        type: String,
        default: "Male"
    },
    
    status: {
        type: String,
        default: "Active"
    }
});

const Userdb = mongoose.model('userdb', schema);

module.exports = Userdb;