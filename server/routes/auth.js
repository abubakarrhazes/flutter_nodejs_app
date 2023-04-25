const express = require('express');
const authRouter = express('router');

authRouter.get('/api/signin', (req, res)=>{

    res.send('Get Page');

});




module.exports = authRouter;