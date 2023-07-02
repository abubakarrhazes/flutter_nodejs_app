const express = require ('express');

const {updateUser , deleteUser } = require('../controllers/userController.js');

const {verifyToken ,verifyAndAuthorization} = require('../middlewares/auth.js');

const userRoutes = express.Router();

//Update User Route 


userRoutes.put('/:id', verifyAndAuthorization, updateUser);


//Delete User Route

userRoutes.delete('/:id', verifyAndAuthorization, deleteUser);




module.exports = userRoutes;


