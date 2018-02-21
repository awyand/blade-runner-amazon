# blade-runner-amazon
A Node.js and MySQL CLI Storefront

## Description

Blade Runner Amazon (Bamazon) is a simple Node.js and MySQL storefront application with a Blade Runner theme.  There are three separate sub-applications representing different permissions to the same backend data, which are further described and demonstrated below:
* Customer (bamazonCustomer.js)
* Manager (bamazonManager.js)
* Supervisor (bamazonSupervisor.js)

## Installation

Blade Runner Amazon utilizes Node Package Manager (NPM) to install features.  The user will need to install a number of packages in order to use the application.

### Clone blade-runner-amazon Repository

In the console, navigate to the directory where you wish to install Blade Runner Amazon.  Type ```git clone https://github.com/awyand/blade-runner-amazon.git``` to clone the blade-runner-amazon repository.  This will create a local copy of blade-runner-amazon files on your system.

### Packages

All dependencies are tracked in the provided package.json and package-lock.json files.  In the console, navigate into the cloned directory ("blade-runner-amazon") and type ```npm install```  This will install the following NPM packages:

* [mysql](https://www.npmjs.com/package/mysql)
* [inquirer](https://www.npmjs.com/package/inquirer)
* [clear](https://www.npmjs.com/package/clear)

## MySQL Creation

There is one .sql file included in this repo (bamazon.sql).  The user will need a MySQL server running and a MySQL database management application such as Sequel Pro or MySQLWorkbench to get started.  Run the MySQL commands in bamazon.sql either my opening the file in your management application or by copying and pasting the commands and executing from within the application.  Once the tables are created, you will be able to run the Blade Runner Amazon Node applications.  Change the database connection parameters in each of the .js files if necessary (e.g. default settings for connecting to the MySQL server are user name "root" with no password, and a port is assigned in the files as well).

[Database/Table Creation Video](https://goo.gl/mVtZyc)

### Files

Blade Runner Amazon utilizes three core JavaScript files for functionality:
* bamazonCustomer.js: Running this file in Node launches the Customer application.  The customer is presented with the current items for sale and is able to make purchases or exit.
* bamazonManager.js: Running this file in Node launches the Manager application.  The manager is presented with a more detailed view of current stock and department information, and is able to execute many more commands, such as viewing low inventory, adding to inventory, adding a new item, and deleting items.
* bamazonSupervisor.js: Running this file in Node launches the Supervisor application.  The supervisor is presented with the option to view a department summary, which details the overhead costs, total sales, and total profit for each department.

[User Guide Video](https://goo.gl/5XtVYj)
