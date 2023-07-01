const express = require('express');

const verifyToken = require('../middlewares/auth.js');


const authRouter = express.Router();

authRouter.post('/report', verifyToken,  report);


module.exports = authRouter;