const express = require('express');
const mongoose = require('mongoose');
const authRouter = require('./routes/auth');
const PORT = 3000;

const URI = "mongodb+srv://alrhazes2:Adam5992@auth-users.ypmtvqn.mongodb.net/?retryWrites=true&w=majority";

const app = express();

//Middlewares
app.use(express.json());
app.use(authRouter);


//Database Connection
mongoose.connect(URI).then(()=>{
  console.log("Connected Succesfully");


}).catch(e =>{

  console.log(e);

});

app.listen(PORT, "0.0.0.0", ()=>{

console.log(`Connected on Port ${PORT}`);
})
