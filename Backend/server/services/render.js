const axios = require('axios');

// Make a GET request to the /api/users
exports.homeRoutes = (req, res) => {
    console.log("HERE")

    axios.get('http://localhost:3000/admin/api/users' , { headers: { 'Content-Type': 'application/json' } })
        .then(function(response){
            res.render('index', { users: response.data });
        })
        .catch(err => {
            res.send(err);
        })
}

exports.add_user = (req, res) => {
    res.render('add_user');
}

exports.update_user = (req, res) => {
    axios.get('http://localhost:3000/admin/api/users', {params: {id: req.query.id}})
        .then(function(userdata){
            res.render("update_user", {user : userdata.data})
        })  
        .catch(err =>{
            res.send(err);
        })
}

exports.users_api = (req, res) => {
    res.render('login');
}



