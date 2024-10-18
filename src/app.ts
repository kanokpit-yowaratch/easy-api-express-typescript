import express from 'express';
const app = express();

app.get('/', (req, res) => {
    res.send('Hello World!');
});

app.get('/salt', (req, res) => {
    res.send('เค็ม แต่ดี');
});

const port = 3579;
app.listen(port, () => {
    return console.log(`Express is listening at http://localhost:${port}`);
});