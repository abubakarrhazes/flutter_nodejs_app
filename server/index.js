const express = require('express');
const mongoose = require('mongoose');
const bodyparser = require('body-parser');
const authRouter = require('./routes/auth.js');
const dotenv = require('dotenv');

const {register } = require('./controllers/auth.js');

const PORT = process.env.PORT || 9090

const app = express();
dotenv.config();

//Middlewares
app.use(express.json());
app.use(bodyparser.json());
app.use(bodyparser.urlencoded({extended: true}));
app.use('/auth', authRouter);




//Database Connection
mongoose.connect(process.env.MONGO_DB, {
  
}).then(()=>{
  console.log("Connected Succesfully");


}).catch(e =>{

  console.log(e);

});

app.listen(PORT, "0.0.0.0", ()=>{

console.log(`Connected on Port http:localhost: ${PORT}`);
})
