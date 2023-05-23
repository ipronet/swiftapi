const mysqldump =  require('mysqldump');
// or const mysqldump = require('mysqldump')
 
// dump the result straight to a file
mysqldump({
    connection: {
        host: 'localhost',
        user: 'swiftalertadmin',
        password: 'SW1ft@l3rt',
        database: 'swiftdb',
    },
    dumpToFile: './dump.sql',
});