const express = require('express');
const app = express();

app.get('/', (req, res) => res.json({ status: 'ok', version: '1.0', message: 'Hello from Project2!' }));
app.get('/health', (req, res) => res.json({ health: 'healthy' }));

app.listen(3000, () => console.log('Server running on port 3000'));
