const db = require('./db/connection');
const inquirer = require("inquirer");
const cTable = require('console.table');
const DB = require('./db/index.js');

function startQuestions() {
  inquirer.prompt([
    {
      type: "list",
      name: "start",
      message: "This application allows you to create, update, delete and view employee records.  See below for a list of options.",
      choices: [
        {
          name:"View all employees",
          value:"employees"
        },
        {
          name:"View all departments",
          value: "departments"
        },
        {
          name:"View all roles",
          value:"roles"
        },
        {
          name:"Add an Employee",
          value:"add_emp"
        },
        {
          name:"Add a Department",
          value:"add_dep"
        },
        {
          name:"Add a Role",
          value:"add_role"
        },
        {
          name:"Update Employee Role",
          value:"update_role"
        }
      ]
    }
  ]).then (res => {
    const option = res.option
    switch(option) {
      case "employees":
        viewEmp()
        break;

      case "departments":
        viewDep()
        break;

      case "roles":
        viewRoles()
        break;

      case "add_emp":
        addEmp()
        break;

      case "add_dep":
        addDep()
        break;

      case "add_role":
        addRole()
        break;

      case "update_role":
        updateEmpRole()
        break;
    }
  });
}

function viewEmp () {
  DB.findAllEmployees ().then(([rows]) => {
    let employees = rows
    console.table(employees)
    startQuestions()
  })
} 

function viewDep () {
  DB.findAllDept ().then(([rows]) => {
    let department = rows
    console.table(department)
    startQuestions()
  })
} 

function viewRoles () {
  DB.findAllRoles ().then(([rows]) => {
    let roles = rows
    console.table(roles)
    startQuestions()
  })
}

