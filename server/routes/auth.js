const express = require('express');
const User = require('../models/user');
const bcryptjs = require('bcryptjs');

const authRouter = express.Router();

//Routes API ENDPOINTS

authRouter.post('/api/signup', async( req, res)=> {

    try{
        const {name , email , password } = req.body;
    const existingUser = await User.findOne({email});
    if(existingUser){
        return res.status(400).json({msg: 'User Already Existed'});
    }
    const hashedPassword = await bcryptjs.hash(password, 8);
    let user = new User({
        name,
        email,
        password: hashedPassword,

    })
    //post that data in the database
    user = await user.save();
    res.json(user)
    //return that data to the user

    } catch(e){
        res.status(500)


    }
    
});

authRouter.get('/api/signin', (req, res) => {
   try{
    const {email, password} = req.


   }





})


module.exports = authRouter;