const app = require('express')();
const http = require('http').Server(app);
const io = require('socket.io')(http);

app.get('/', (req, resp) => {
    resp.sendFile(__dirname + '/index.html');
});

io.on('connection', (socket) => {
    console.log('A user has connected!');
});


http.listen(3000, () => {
    console.log('Server listening on port 3000');
});