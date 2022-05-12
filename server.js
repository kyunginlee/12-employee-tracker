// install packages required
const mysql = require('mysql');
const inquirer = require('inquirer');
const ctable = require('console.table');
const fs = require('fs');

// Connect to mysql TODO: enter your mysql password
const db = mysql.createConnection(
    {
      host: 'localhost',
      // MySQL username,
      user: 'root',
      // MySQL password
      password: '',
      database: 'tracker_db'
    },
    console.log(`Connected to the tracker_db database.`)
  );

// establish connection otherwise 
  connection.connect(function(err) {
    if (err) throw err;
    startup();
  }); 