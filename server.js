// install packages required
const mysql = require('mysql2');
const inquirer = require('inquirer');
const fs = require('fs');


// Connect to mysql TODO: enter your mysql password
const connection = mysql.createConnection(
    {
      host: 'localhost',
      // MySQL username,
      user: 'root',
      // MySQL password
      password: 'xxxx',
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
        connection.connectionManager.close()
        .then(() => 
        console.log('Shutting down...'));
      break;
    }
  })
};

const viewDept = () => {
  let query = "SELECT dept_id, dept_name FROM department";
  // for loop to access all elements of he returned reponse
  connection.query(query, function(err, res) {
    console.table(res);
    startApp();
  });
}

const viewRole = () => {
  let query = "SELECT title, role_id, dept_id, salary FROM roles";
  // for loop to access all elements of he returned reponse
  connection.query(query, function(err, res) {
    console.table(res);
    startApp();
  });
}

const viewEmp = () => {
  let query = "SELECT id, first_name, last_name, title, dept_name, salary, manager_id FROM employees";
  // for loop to access all elements of he returned reponse
  connection.query(query, function(err, res) {
    console.table(res);
    startApp();
  });
}

const addEmp = () => {
  inquirer
    .prompt({
      name: "addEmp",
      type: "input",
      message: "Enter Employee full name (excluding any middle names)"
    })

    .then(function(input) {
      console.log(input);
      let name = input.addEmp;
      let fullName = name.split(" ");
      let query = "INSERT INTO employees (first_name, last_name) VALUES ?";


      console.log(fullName + " has been added to the employee database.");
      // let query = "INSERT INTO employees (first_name, last_name) VALUES ?";
      connection.query(query, [[fullName]], function(err, res) {
        if (err) throw err;
        console.log(err);
      });
      startApp();
    });
}
const updateEmp = () => {
  inquirer
  .prompt({
    name: "updateEmp",
    type: "input",
    message: "Please provide employee ID of the employee to update",
  })
  .then(function (input) {
    let id = input.id;

    inquirer
      .prompt({
        name: "title",
        type: "input",
        message: "Enter new title of the employee",
      })
      .then(function (input) {
        let title = input.title;

        let query = "UPDATE employee SET title? WHERE title=?";
        connection.query(query, [id, title], function (err, res) {
          if (err) {
            console.log(err);
          }
          startApp();
        });
      });
  });
}
