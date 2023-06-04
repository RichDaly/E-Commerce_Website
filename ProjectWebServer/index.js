// Express Module
const express = require('express');
const app = express();
// Body Parser Module
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: true }));
// set view engine to use
app.set('view engine', 'ejs');

// Connect to database:
const mysql = require('mysql');
// Create a connection to the MySQL database
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'g00246442'
});
connection.connect((err) => { // Connect to the database.
    if (err) { //handle error messages.
        console.error('Error connecting to G00246442 database: ', err);
    } else {
        console.log('Connected to G00246442 database!');
    }
});

/*
 * Serve static files from the public directory. Additional information sourced from 
 * https://expressjs.com/en/starter/static-files.html & 
 * https://stackoverflow.com/questions/46257656/node-express-send-static-file-on-request
 * 
 * When '/static' used replace with '/public' and concat to end of current directory.
 */
const path = require('path');
app.use('/static', express.static(path.join(__dirname, '/public')));

// Using homePage.html as the default starting point as index.html would be. 
app.get("/", function (req, res) {
    res.render("homePage.ejs");
});

/* Handle any requests for home page, mainly internal call from inside website using navbar
 * and additional <a> tag buttons.
 */
app.get("/home", function (req, res) {
    res.render("homePage.ejs")
});

// get data from database and render kayaks.ejs and handled any errors if occur
app.get("/kayaks", function (req, res) {
    connection.query("SELECT * FROM kayakproducts", function (err, rows, fields) {
        if (err) {
            console.error('Error retrieving data from database: ', err);
            res.status(500).send('Error retrieving data from database.<br><a href="/home">Return Home</a>');
        } else if (rows.length === 0) {
            console.error(`No rows found`);
            res.status(404).send(`No products found.<br><a href="/home">Return Home</a>`);
        } else {
            const products = rows;
            res.render("kayaks.ejs", { products });
        }
    });
});

// get individual product from database and render kayakProduct.ejs and handled any errors if occur
app.get("/kayak", function (req, res) {
    const ID = req.query.product;
    connection.query("SELECT * FROM kayakproducts WHERE id = ?", [ID], function (err, rows, fields) {
        if (err) {
            console.error('Error retrieving data from database: ', err);
            res.status(500).send('Error retrieving data from database.<br><a href="/home">Return Home</a>');
        } else if (rows.length === 0) {
            console.error(`No rows found for ID ${ID}`);
            res.status(404).send(`No product found for ID ${ID}.<br><a href="/home">Return Home</a>`);
        } else {
            const prodName = rows[0].ProductName;
            const prodType = rows[0].ProductType;
            const prodDetails = rows[0].Description;
            const prodCost = rows[0].Cost;
            const prodImage = rows[0].Image;
            res.render("kayakProduct.ejs", { name: prodName, type: prodType, description: prodDetails, cost: prodCost, image: prodImage });
        }
    });
});

// get data from database and render clothing.ejs and handled any errors if occur
app.get("/clothing", function (req, res) {
    connection.query("SELECT * FROM clothing", function (err, rows, fields) {
        if (err) {
            console.error('Error retrieving data from database: ', err);
            res.status(500).send('Error retrieving data from database.<br><a href="/home">Return Home</a>');
        } else if (rows.length === 0) {
            console.error(`No rows found`);
            res.status(404).send(`No products found.<br><a href="/home">Return Home</a>`);
        } else {
            const products = rows;
            res.render("clothing.ejs", { products });
        }
    });
});

// get individual product from database and render clothingProduct.ejs and handled any errors if occur
app.get("/product", function (req, res) {
    const ID = req.query.prod;
    connection.query("SELECT * FROM clothing WHERE id = ?", [ID], function (err, rows, fields) {
        if (err) {
            console.error('Error retrieving data from database: ', err);
            res.status(500).send('Error retrieving data from database.<br><a href="/home">Return Home</a>');
        } else if (rows.length === 0) {
            console.error(`No rows found for ID ${ID}`);
            res.status(404).send(`<b>No product found for ID ${ID}</b>.<br><a href="/home">Return Home</a>`);
        } else {
            const prodName = rows[0].ProductName;
            const prodDetails = rows[0].Description;
            const prodCost = rows[0].Cost;
            const prodImage = rows[0].Image;
            res.render("clothingProduct.ejs", { name: prodName, description: prodDetails, cost: prodCost, image: prodImage });
        }
    });
});

// import users module
const users = require('./users');
users.createUser("user", "pass"); // login details as required.
var loggedIn = false; // Keep user logged in once set to true

// render checkout.ejs if user logs in
app.get("/checkout", function (req, res) {
    if (loggedIn) { // If already logged in go straight to checkout
        res.render("checkout.ejs");
    } else { // login required before summary of order
        res.sendFile(path.resolve(__dirname + "/public" + "/login.html"));
    }
});

// direct route to login page, only accessed from register.ejs on use of login button
app.get("/login", function (req, res) {
    res.sendFile(path.resolve(__dirname + "/public" + "/login.html"));
});

// submit login details to be authenticated. Renders checkout.ejs or sends loginFailed.html depending on result.
app.post("/loginsubmit", function (req, res) {
    const username = req.body.username;
    const password = req.body.password;
    const authenticated = users.authenticateUser(username, password);

    if (authenticated) {
        loggedIn = true; // set logged in status to prevent being asked again.
        res.render("checkout.ejs")
    } else {
        res.sendFile(path.resolve(__dirname + "/public" + "/loginFailed.html"));
    }
});

// render register.ejs to create a new user.
app.get("/register", function (req, res) {
    const message = ""; // Placeholder used in post method below
    const failMessage = ""; // Placeholder used in post method below
    res.render("register.ejs", { message, failMessage });
});

// check if username is available, render register.ejs and display message dependant on result.
app.post("/submitUser", function (req, res) {
    const username = req.body.username;
    const password = req.body.password;
    const available = users.usernameAvailable(username);

    if (available) {
        users.createUser(username, password);
        const message = "Success Username Created!"; //user created succesfully
        const failMessage = "";
        res.render("register.ejs", { message, failMessage });
    } else {
        const message = "";
        const failMessage = "Username already exists, try again!";
        res.render("register.ejs", { message, failMessage });
    }
});

// 404 if nothing else matches.
app.use((req, res) => {
    res.render("404.ejs");
});

// Start the server
app.listen(3000, () => {
    // Information displayed to console when started.
    console.log('Server started on port 3000');
});