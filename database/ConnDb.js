import 'dotenv/config'
import mongoose from "mongoose";

async function conn() {
    await mongoose.connect(process.env.MONGO_URI);
}

export default conn;