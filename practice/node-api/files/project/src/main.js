const express = require('express');
const app = express();
const dotenv = require('dotenv');

dotenv.config();

app.get('/hello-world', (req, res) => {
    res.json({message : 'Hello from container'});
})

const PORT = process.env.PORT;
app.listen(PORT, () => {
    console.log(`Running on port ${PORT}`);
})