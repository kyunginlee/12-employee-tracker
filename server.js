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
        connection.end();
      break;
    }
  })
};

const viewDept = () => {
  let query = "SELECT * FROM department";
  // for loop to access all elements of he returned reponse
  connection.query(query, function(err, res) {
    console.table(res);
    startApp();
  });
}

const viewRole = () => {
  let query = "SELECT id, title, salary, department_id FROM roles";
  // for loop to access all elements of he returned reponse
  connection.query(query, function(err, res) {
    console.table(res);
    startApp();
  });
}

const viewEmp = () => {
  let query = "SELECT first_name, last_name, role_id, manager_id FROM employees";
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
    name: "employeeUpdate",
    type: "input",
    message: "id of employee to update",
  })
  .then(function (choice) {
    let id = choice.id;

    inquirer
      .prompt({
        name: "newRoleId",
        type: "input",
        message: "Please enter the employee's new role id",
      })
      .then(function (choice) {
        let roleId = choice.roleId;

        let query = "UPDATE employees SET role_id=? WHERE id=?";
        console.log(" Employee role has been updated.");
        connection.query(query, [roleId, id], function (err, res) {
          if (err) {
            console.log(err);
          }
          startApp();
        });
      });
  });
}

const addDept = () => {
  inquirer
    .prompt({
      name: "addDepartment",
      type: "input",
      message: "Enter New department name"
    })

    .then(function(answer) {
      console.log(answer);
      let deptName = answer.addDepartment;
      // let firstAndLastName = name.split(" ");
      console.log(deptName);
      let query = "INSERT INTO department (name) VALUES ?";
      connection.query(query, [deptName], function(err, res) {
        if (err) throw err;
        console.log(err);
      });
      startApp();
    });
}

const addRole = () => {
  inquirer
    .prompt({
      name: "addRole",
      type: "input",
      message: "Enter New role name"
    })

    .then(function(answer) {
      console.log(answer);
      let roleName = answer.addRole;
      // let firstAndLastName = name.split(" ");
      console.log(roleName);
      let query = "INSERT INTO roles (title) VALUES ?";
      connection.query(query, [roleName], function(err, res) {
        if (err) throw err;
        console.log(err);
      });
      startApp();
    });
}