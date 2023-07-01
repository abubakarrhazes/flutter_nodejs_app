const express = require('express');
const Report = require('../models/report');
const User = require('../models/user.js');



/* Report Crime */


const report = async (req, res) => {


    try{
        const {userId , category , detail, location} = req.body;
        const user = await User.findById(userId);
        const reportCrime = new CrimeReport({
            userId,
            userName: user.name,
            userEmail : user.email
        })
        await reportCrime.save();

        res.status(200).json({msg: 'Crime reported Succesfullt'});

    }catch(err){
        res.status(500).json({err: err.msg});

    }
}

module.exports = {report};
