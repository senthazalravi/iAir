const express = require('express');
const route = express.Router();
const bcrypt = require('bcryptjs');
const passport = require('passport');

//User model
const User = require('../model/model');
const { isAdmin } = require('../../config/auth');

// Login Page
route.get('/login', (req, res) => res.render('login'));

// Register Page
route.get('/register', (req, res) => res.render('register'));

// Register Handle 
route.post('/register', (req, res) => {
    const { userName, firstName,  lastName, email, phone, password, password2 } = req.body;
    let errors = [];

    //Check required fields
    if(!userName || !firstName || !lastName || !email || !phone || !password || !password2)
    {
        errors.push( { msg: 'Please fill in all fields'});
    } 

    // Check passwords match
    if(password !== password2)
    {
        errors.push({ msg: 'Passwords do not match'});
    }

    // Check pass lenngth
    if(password.length < 6)
    {
        errors.push({ msg: 'Password should be al least 6 characters'});
    }

    if(errors.length > 0)
    {
        res.render('register', {
            errors,
            userName,
            firstName,
            lastName,
            email,
            phone,
            password,
            password2
        });
    }
    else
    {
        //Validation passes
        User.findOne({ email: email })
            .then(user => {
                if(user)
                {
                    // User exists
                    errors.push( {msg: 'Email is already registered'} );
                    
                    res.render('register', {
                        errors,
                        userName,
                        firstName,
                        lastName,
                        email,
                        phone,
                        password,
                        password2
                    });
                }
                else
                {
                    const newUser = new User({
                        userName,
                        firstName,
                        lastName,
                        email,
                        phone,
                        password,
                        password2
                    });

                    //Hash Password
                    bcrypt.genSalt(10, (err, salt) => 
                        bcrypt.hash(newUser.password, salt, (err, hash) => {
                            if(err) throw err;

                            // Set password to hashed
                            newUser.password =  hash;

                            //Save user
                            newUser.save()
                                .then(user => {
                                    req.flash('success_msg', 'You are now registered and can log in')
                                    res.redirect('/users/login');
                                })
                                .catch( err => console.log(err));
                    }))
                    
                }
            })
            .catch();

    }

});

// Login Handle
route.post('/login', (req, res, next) => {

    if( (req.body.email === process.env.ADMIN_EMAIL) && (req.body.password === process.env.ADMIN_PASSWORD) )
    {
        passport.authenticate('local', {
            successRedirect: '/admin',
            failureRedirect: '/users/login',
            failureFlash: true
        })(req, res, next);
    }
    else
    {
        passport.authenticate('local', {
            successRedirect: '/dashboard',
            failureRedirect: '/users/login',
            failureFlash: true
        })(req, res, next);
    }
});

// Logout Handle
route.get('/logout', (req, res) => {
    req.logout();
    req.flash('success_msg', 'You are logged out');
    res.redirect('/users/login');
});

module.exports = route;
