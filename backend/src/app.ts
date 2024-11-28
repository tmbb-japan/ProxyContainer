import express from 'express';

const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send(`This response is from proxy and running on port ${port}!`);
});

app.listen(port, () => {
    console.log(`Backend server is running on port ${port}`);
});