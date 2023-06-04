//create an array for user data
const users = [];

// push user data into array
function createUser(username, password) {
    users.push({ username, password });
}

// check if username and password match
function authenticateUser(username, password) {
    const user = users.find(user => user.username === username);

    if (!user || user.password !== password) {
        return false;
    }
    return true;
}

// check if username exist only. no need to check password.
function usernameAvailable(username) {
    const user = users.find(user => user.username === username)

    if (!user) {
        return true;
    }
    return false;
}

// export functions so that they are available to use.
module.exports = { createUser, authenticateUser, usernameAvailable };