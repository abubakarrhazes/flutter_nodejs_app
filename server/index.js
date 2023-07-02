const express = require('express');
const mongoose = require('mongoose');
const bodyparser = require('body-parser');
const authRouter = require('./routes/auth.js');
const userRoutes = require('./routes/user.js');
const dotenv = require('dotenv');



const PORT = process.env.PORT || 9090

const app = express();
dotenv.config();

//Middlewares
app.use(express.json());
app.use(bodyparser.json());
app.use(bodyparser.urlencoded({extended: true}));
app.use('/auth', authRouter);
app.use('/user', userRoutes);





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
