// install packages required
const mysql = require('mysql2');
const Sequelize = require('sequelize');
const inquirer = require('inquirer');
const fs = require('fs');


require('dotenv').config()
// Import the connection object
const connection = new Sequelize(
  process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    // Database location
    host: 'localhost',
    dialect: 'mysql',
    // default port for the classic MySQL protocol
    port: 3306
    // logging: false
  },
  console.log(`Connected to the tracker_db database.`),
);

startApp();


// // Connect to mysql TODO: enter your mysql password
// const db = mysql.createConnection(
//     {
//       host: 'localhost',
//       // MySQL username,
//       user: 'root',
//       // MySQL password
//       password: 'xxxxx',
//       database: 'tracker_db'
//     },
//     console.log(`Connected to the tracker_db database.`)
//   );

// establish connection otherwise 
  // db.connect(function(err) {
  //   if (err) throw err;
  //   startApp();
  // }); 

// prompts requiring user input
function startApp() {
  inquirer.prompt([
    {
      type: 'list', 
      message: "Please select an option.",
      name: 'main',
      choices: [
        "View all departments",
        "View all roles",
        "View all employees",
        "Add a department",
        "Add a role",
        "Add an employee",
        "Update employee role",
        "close"
      ],
    }
// SQL server case and break statements to break from loop when input received to execute next function within choice
  ]).then(function(res) {
    console.log(res.main);
    switch (res.main) {
      case "View all departments":
      viewDept();
      break;

      case "View all roles":
      viewRole();
      break;

      case "View all employees":
      viewEmp();
      break;

      case "Add a department":
      addDept();
      break;

      case "Add a role":
      addRole();
      break;

      case "Add an employee":
      addEmp();
      break;

      case "Update employee role":
      updateEmp();
      break;

      case "close":
        sequelize.connectionManager.close()
        .then(() => 
        console.log('Shutting down...'));
      break;
    }
  })
};

const viewDept = (res) => {
  let query = "SELECT dept_name FROM department";
  // for loop to access all elements of he returned reponse
  connection.query(query, function(err, res) {
    for (var i = 0; i < res.length; i++) {
      console.log(res[i].name);
    }
  });
}

const viewRole = (res) => {
  let query = "SELECT title FROM roles";
  // for loop to access all elements of he returned reponse
  connection.query(query, function(err, res) {
    for (var i = 0; i < res.length; i++) {
      console.log(res[i].name);
    }
  });
}