const maxApi = require('max-api');
const io = require('socket.io-client');

let socket;

maxApi.addHandler('connect', (url) => {
    socket = io(url);

    socket.on('talkback', (msg) => {
        maxApi.outlet('talkback', msg);
    });

    socket.on('snap', () => {
        maxApi.outlet('snap');
    });

    socket.on('crackle', () => {
        maxApi.outlet('crackle');
    });

    socket.on('pop', () => {
        maxApi.outlet('pop');
    });

    socket.on('video1', (value) => {
        maxApi.outlet('video1', value);
    });

    socket.on('video2', (value) => {
        maxApi.outlet('video2', value);
    });

    socket.on('video3', (value) => {
        maxApi.outlet('video3', value);
    });

    socket.on('video4', (value) => {
        maxApi.outlet('video4', value);
    });
});

maxApi.addHandler('disconnect', () => {
    socket.close();
});

maxApi.addHandler('message', (msg) => {
    socket.emit('message', msg);
})