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

    socket.on('disconnect', () => {
        removeUser();
    });
    
    socket.on('sugarSpice', (value) => {
        console.log('sugarSpice', value);
        socket.broadcast.emit('sugarSpice', value);
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