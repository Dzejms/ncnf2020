const app = require('express')();
const http = require('http').Server(app);
const io = require('socket.io')(http);
const port = process.env.port || 3000;

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

    socket.on('snap', () => {
        console.log('Snap received');
        socket.broadcast.emit('snap');
    });

    socket.on('crackle', () => {
        console.log('Crackle received');
        socket.broadcast.emit('crackle');
    });

    socket.on('pop', () => {
        console.log('Pop received');
        socket.broadcast.emit('pop');
    });

    socket.on('talkback', (msg) => {
        console.log('Talkback message received:', msg);
        socket.broadcast.emit('talkback', msg);
    });
});


http.listen(port, () => {
    console.log('Server listening on port: ' + port);
});