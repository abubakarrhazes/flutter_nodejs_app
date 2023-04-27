const express = require('express');
const User = require('../models/user');

const authRouter = express.Router();

//Routes API ENDPOINTS

authRouter.post('/api/v1/signup', async( req, res)=> {
    const {name , email , password } = req.body;
    const existingUser = await User.findOne({email});
    if(existingUser){
        return res.status(400).json({msg: 'User Already Existed'});
    }
    let user = new User({
        name,
        email,
        password,

    })
    //post that data in the database
    user = await user.save();
    res.json(user)
    //return that data to the user




});

authRouter.get('/api/v1/signin', (req, res) => {
    res.send('Workin Fine');





})







module.exports = authRouter;