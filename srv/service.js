module.exports = (srv) => {

    srv.on('getData', async (req) => {
        console.log('getData ....');
        return 'Done';
    });

    srv.on('postData', async (req) => {
        console.log('postData ....');
        return 'Done';
    });

};
