const app = require('express')();
const http = require('http').Server(app);
const io = require('socket.io')(http);

app.get('/', (req, resp) => {
    resp.sendFile(__dirname + '/index.html');
});

io.on('connection', (socket) => {
    console.log('A user has connected!');
    socket.on('disconnect', () => {
        console.log("A user has disconnected");
    });

    socket.on('message', (msg) => {
        console.log('Message received:', msg);
        io.emit('message', msg);
    });

    socket.on('talkback', (msg) => {
        console.log('Talkback message received:', msg);
        socket.broadcast.emit('talkback', msg);
    });
});


http.listen(3000, () => {
    console.log('Server listening on port 3000');
});