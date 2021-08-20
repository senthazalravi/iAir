const express = require('express');
const route = express.Router()

const services = require('../services/render');
const controller = require('../controller/controller');
const { ensureAuthenticated } = require('../../config/auth');

//------------------------ ADMIN ----------------------------
/**
 *  @description Root Route
 *  @method GET /
 */
route.get('/', ensureAuthenticated, services.homeRoutes);

/**
 *  @description add users
 *  @method GET /add-user
 */
route.get('/add-user', ensureAuthenticated, services.add_user)

/**
 *  @description for update user
 *  @method GET /update-user
 */
route.get('/update-user', ensureAuthenticated, services.update_user)

// API
route.get('/api/users', controller.find);
route.post('/api/users', controller.create);
route.put('/api/users/:id', controller.update);
route.delete('/api/users/:id', controller.delete);

module.exports = route