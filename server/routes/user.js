const express = require ('express');

const {updateUser , deleteUser } = require('../controllers/userController.js');


const userRoutes = express.Router();

//Update User Route 


userRoutes.put('/:id', updateUser);


//Delete User Route


userRoutes.delete('/:id', deleteUser);




module.exports = userRoutes;


