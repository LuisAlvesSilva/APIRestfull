import express from 'express';

import conn from './database/ConnDb.js';
import routes from './routes/routes.js';

const app = express();

app.use(express.json());
app.use(routes);

conn().then(() => {
    app.listen(3000, () => console.log("🚀 Pai ta Voando!"))
}).catch((error) => {
    console.log(error)
});