const express = require('express');
const User = require('../models/user');
const bcrypt = require('bcrypt');
const  jwt = require('jsonwebtoken');


/* Regsiter User */

const register = async (req, res) => {

    try{
        const {name , email , password } = req.body;
        // Existing User Check 
        const existingUser =  await User.findOne({email});
        if(existingUser){
            return res.status(400).json({msg: "User With same Email already Exist"});

        }
        const salt = 10;
        const hashedPassword = await bcrypt.hash(password, salt);
        const newUser =  new User({
            name,
            email,
            password: hashedPassword,
        })

        const savedUser = await newUser.save();
        res.staus(200).json( savedUser, {msg:"Account created Succesfully"})

    }catch(err){

        res.status(500).json({err: err.message});


    }


}

const login = async  (req, res) => {
    try{
        const {email , password } = req.body;
        const user = await User.findOne({email: email});
        if(!user){
            return res.status(400).json({msg: ` User With this Email ${user.email} does not Exist` });
        }
        const isMatch = await bcrypt.compare(password, user.password);

        const token = jwt.sign({id: user.id }, process.env.JWT_SECRET_KEY);
        delete user.password;

        res.status(200).json({token, user});

    }catch(err){
        res.status(500).json({err: err.message});

    }



}



module.exports = {register,login};



