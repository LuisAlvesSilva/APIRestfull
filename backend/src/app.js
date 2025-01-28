const app = require('express')();
const PORT = 8080;

app.listen(
    PORT,
    () => console.log(`esta on em http://localhost:${PORT}`)
)