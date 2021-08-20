module.exports = {
   ensureAuthenticated: function(req, res, next) {
        if(req.isAuthenticated())
        {
            return next();
        }

        req.flash('error_msg', 'Please log in to view this resorce');
        res.redirect('/users/login');
    },

    isAdmin: function(req, res, next) {
        if( (req.body.email === process.env.ADMIN_EMAIL) && (req.body.password === process.env.ADMIN_PASSWORD) )
        {
            return next();
        }

        req.flash('error_msg', 'Admin Login Fail');
        res.redirect('/users/login');
    }
}