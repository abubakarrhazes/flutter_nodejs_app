
const express = require('express');
const authRouter = require('./routes/auth');

const PORT = 3000;

const app = express();

app.use(authRouter);




app.listen(PORT, (req, res)=> {

    console.log(`Connected Succesfully ${PORT}`);


});

