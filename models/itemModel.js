import mongoose from 'mongoose';

const itemSchema = new mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    value:{
        type: Number,
        required: true
    },
    description: {
        type: Text
    },
    createdAt: {
        type: Date,
        default: Date.now()
    }
})

export default mongoose.model('Item', itemSchema);