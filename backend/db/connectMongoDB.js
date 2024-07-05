import mongoose from "mongoose";
import dotenv from "dotenv";

dotenv.config();

const connectMongoDB = async () =>{
    try{
        const conn = await mongoose.connect("mongodb+srv://kavach:kavach123@cluster0.t0v6c.mongodb.net/abhiTrainings?retryWrites=true&w=majority&appName=Cluster0");
        console.log("MongoDB Connected!",conn.connection.host);

    } catch(err){
        console.log("Error Connecting to MONGODB:",err.message)
        process.exit(1);
    }
}

export default connectMongoDB;