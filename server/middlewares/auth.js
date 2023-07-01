const jwt = require ('jsonwebtoken');
const verifyToken = async (req, res, next) => {

    try{
        let token = req.header("Authorization");
        if(!token){
            res.status(403).send("Access Denied");
        }

        if(token.startWith("Bearer")){
            token = token.slice(7,token.length).trimLeft();
        }
        const verified =  jwt.verify(token, process.env.JWT_SECRET_KEY);
         req.user = verified;
        next();

    }catch(err){
        res.status(500).json({err: err.message});


    }
}

module.exports = verifyToken;