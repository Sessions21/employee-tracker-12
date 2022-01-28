const db = require('./db/connection');
const inquirer = require("inquirer");
const DB = require('./db/index.js');
const cTable = require('console.table');



function startQuestions() {
  inquirer.prompt([
    {
      type: "list",
      name: "option",
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
          name:"Add Employee",
          value:"add_emp"
        },
        {
          name:"Add Department",
          value:"add_dep"
        },
        {
          name:"Add Role",
          value:"add_role"
        },
        {
          name:"Update Employee Role",
          value:"update_role"
        },
        {
          name: "EXIT",
          value: "exit"
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
      case "exit":
        console.log("Thank you! Good bye.");
        break;
      default:
        console.log("default");
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

startQuestions();