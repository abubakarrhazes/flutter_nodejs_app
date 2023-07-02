const express = require('express');
const User = require('../models/user.js');


const updateUser = async (req, res) => {





};


const deleteUser = async (req,res) =>{
    try{
        const deleteUserById =  await User.findById(req.params.id);
        res.staus(200).json({msg: "Account Deleted Succesfully"});

    }catch(err){

        res.staus(500).json({err: err.msg});




    }



}


module.exports = {updateUser, deleteUser};



