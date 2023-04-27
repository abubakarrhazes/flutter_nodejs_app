const express = require('express');
const mongoose = require('mongoose');
const authRouter = require('./routes/auth');
const PORT = 3000;
const uri = "mongodb+srv://anuuman2:aksgFqJA7qotWRyj@cluster0.hw0yeyi.mongodb.net/?retryWrites=true&w=majority";

const app = express();

//Middlewares
app.use(express.json);
app.use(authRouter);


//Database Connection

mongoose.connect(uri).then(()=> {

    console.log('Database Connected Succesfully');

}).catch(e =>{
   console.log(e);

});



// Create a MongoClient with a MongoClientOptions object to set the Stable API version

app.listen(PORT, ()=>{

console.log(`Connected on Port ${PORT}`);
})
