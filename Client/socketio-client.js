const maxApi = require('max-api');
const io = require('socket.io-client');

let socket;

maxApi.addHandler('connect', (url) => {
    socket = io(url);

    socket.on('talkback', (msg) => {
        maxApi.outlet('talkback', msg);
    });

    socket.on('sugarSpice', (value) => {
        maxApi.outlet('sugarSpice', value);
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
    console.log("Disconnect");
});