// install packages required
const mysql = require('mysql');
// const Sequelize = require('sequelize');
const inquirer = require('inquirer');
const ctable = require('console.table');
const fs = require('fs');


// require('dotenv').config()
// console.log(process.env)

// const sequelize = new Sequelize(
//   process.env.DB_NAME,
//   process.env.DB_USER,
//   process.env.DB_PASSWORD,
//   {
//     host: 'localhost',
//     dialect: 'mysql',
//   }
// );module.exports = sequelize;

// Connect to mysql TODO: enter your mysql password
const db = mysql.createConnection(
    {
      host: 'localhost',
      // MySQL username,
      user: 'root',
      // MySQL password
      password: 'Tollg2919',
      database: 'tracker_db'
    },
    console.log(`Connected to the tracker_db database.`)
  );

// establish connection otherwise 
  connection.connect(function(err) {
    if (err) throw err;
    startApp();
  }); 

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
        connection.end();
        break;
      }
    })
  };