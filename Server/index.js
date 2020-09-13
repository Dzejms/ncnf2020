const app = require('express')();
const http = require('http').Server(app);
const io = require('socket.io')(http);
const port = process.env.port || 8080;

app.get('/', (req, resp) => {
    resp.sendFile(__dirname + '/index.html');
});

let userCount = 0

io.on('connection', (socket) => {
    
    addUser();

    socket.emit('userCount', userCount);

    socket.on('disconnect', () => {
        removeUser();
        socket.emit('userCount', userCount);
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
    
    socket.on('video1', (value) => {
        console.log('video1', value);
        socket.broadcast.emit('video1', value);
    });
    
    socket.on('video2', (value) => {
        console.log('video2', value);
        socket.broadcast.emit('video2', value);
    });
    
    socket.on('video3', (value) => {
        console.log('video3', value);
        socket.broadcast.emit('video3', value);
    });
    
    socket.on('video4', (value) => {
        console.log('video4', value);
        socket.broadcast.emit('video4', value);
    });
    
    socket.on('talkback', (msg) => {
        console.log('Talkback', msg);
        socket.broadcast.emit('talkback', msg);
    });
});

const addUser = () => {
    ++userCount;
    console.log('A user has connected!');
}

const removeUser = () => {
    --userCount;
    console.log("A user has disconnected");
}


http.listen(port, () => {
    console.log('Server listening on port: ' + port);
});