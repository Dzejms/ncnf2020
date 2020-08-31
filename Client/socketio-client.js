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

    socket.on('filter.frequency', (value) => {
        maxApi.outlet('filter.frequency', value);
    });
});

maxApi.addHandler('disconnect', () => {
    socket.close();
});

maxApi.addHandler('message', (msg) => {
    socket.emit('message', msg);
})