# Project Requirements

For this assignment, you must create a business e-commerce website that employs
the principles of HTML5, CSS and JavaScript which meets the requirements specified below.
The 'business' can be of your choosing (or it can be a personal site, meeting the requirements outlined
below). You should employ a common design theme/style and colour scheme throughout.

## Requirements

Your website should:

1. Allow the customer to enter their login details and have login details validated (via a login screen)
before receiving a summary of the order - You can implement the login feature any way you wish using
JavaScript and/or Node. The credentials for your website should be user and pass (all lowercase)

2. Create a form and perform form validation through JavaScript or HTML to ensure that: text fields are not empty and a valid email address is entered

3. Include a slideshow or carousel which displays a different image each time the page is loaded

4. Allow the user to ‘purchase’* items from the site

5. Use an object or an array in JavaScript

6. Use at least one custom module in Node

7. Include capability for handling ‘post’ and ‘get’ requests

8. Include both static and dynamic content

9. Include the use of Templates in Node

10. Include error messages to provide feedback to users in case of any issues or errors

11. Connect to a MySQL database that contains relevant site information (eg., product info) using
Node. Your database name should be your ATU ID, eg, G00345678, both username and password
should be root

12. Use the bootstrap version 5 framework (via CDN).

*For this assignment, 'purchase' can mean that the user is presented with the possibility to choose a product or item,
select a quantity, and if the purchased button is clicked, they will be presented with a total cost.
You should also provide a document briefly outlining the details of your project illustrating if/how you have
implemented each of the items above, along with any other information you deem is relevant..

# Using the site

1. Download G00246442_DB.sql and import into MySQL. It is expected to be called g00246442
and the username and password both to be ‘root’. If set up differently, details relating to the
database must be updated in index.js within the ProjectWebServer directory.

2. Download the ProjectWebServer directory.

3. Using the Command line interface from within the above directory use the following command
to install dependencies required (read from package.json): `npm install`

4. Once installation is complete use this command to start the server: `node index.js`

5. Using the browser of your choice enter the following URL to you to the site: `http://localhost:3000/`
