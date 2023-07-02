const express = require('express');
const Report = require('../models/report');
const User = require('../models/user.js');



/* Report Crime */


const report = async (req, res) => {


    try{
        const {userId , category , detail, location} = req.body;
        const user = await User.findById(userId);

        const reportCrime = new Report({
            name : user.name,
            email : user.email,
            category,
            detail,
            location,
        })
        const CaseReported = await reportCrime.save();
        res.status(200).json({msg: 'Crime reported Succesfullt'});

    }catch(err){
        res.status(500).json({err: err.msg});

    }
}

const reported = async (req,res )=> {

    res.send('Hello world');
}

module.exports = {report};
