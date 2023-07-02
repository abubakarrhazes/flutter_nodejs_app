const express = require('express');
const {report} = require('../controllers/reportController.js')
const verifyToken = require('../middlewares/auth.js');


const reportRouter = express.Router();
reportRouter.post('/report',  report);



module.exports = reportRouter;