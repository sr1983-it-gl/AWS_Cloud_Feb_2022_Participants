
const mysql = require('mysql2');


// host: 'localhost',
// user: 'root', /* MySQL User */
// password: 'mypassword_11', /* MySQL Password */
// database: 'products_db' /* MySQL Database */

const connection = mysql.createConnection({

  host     : process.env.RDS_HOSTNAME,
  user     : process.env.RDS_USERNAME,
  password : process.env.RDS_PASSWORD,
  port     : process.env.RDS_PORT,
  database : process.env.RDS_DB_NAME 
});
   
connection.connect((err) =>{
  if(err) throw err;
  console.log('Mysql Connected with App...');
});


module.exports = {connection}