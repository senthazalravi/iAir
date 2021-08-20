const express = require('express');
const dotenv = require('dotenv');
const morgan = require('morgan');
const path = require('path');

const flash = require('connect-flash');
const session = require('express-session');
const passport = require('passport');

const connectBD = require('./server/database/connection');

const app = express();

// Passport Config
require('./config/passport')(passport);

dotenv.config({ path:'config.env'})
const PORT = process.env.PORT || 8080

// Log request
app.use(morgan('tiny'));

// Mongodb connection
connectBD();    

// EJS
app.set('view engine', 'ejs');

// Bodyparser
app.use(express.json())
app.use(express.urlencoded({extended: true}))

// Express Session
app.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
}));

// Passport middleware
app.use(passport.initialize());
app.use(passport.session());

// Connect flash
app.use(flash());

// Global Vars
app.use(function(req, res, next) {
    res.locals.success_msg = req.flash('success_msg');
    res.locals.error_msg = req.flash('error_msg');
    res.locals.error = req.flash('error');
    next();
  });

// Load assets
app.use('/css', express.static(path.resolve(__dirname, "assets/css")));
app.use('/img', express.static(path.resolve(__dirname, "assets/img")));
app.use('/js', express.static(path.resolve(__dirname, "assets/js")));

// load routers
app.use('/admin', require('./server/routes/router'));
app.use('/',  require('./server/routes/index'));
app.use('/users',  require('./server/routes/users'));

// PORT
app.listen(PORT,  () => {console.log(`Server is running on http://localhost:${PORT}`)});