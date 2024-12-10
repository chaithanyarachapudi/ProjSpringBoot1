<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up Page</title>
<link rel="stylesheet" href="style.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	background:
		url('https://media-manager.starsinsider.com/1920/na_59f715b9055eb.jpg')
		no-repeat;
	background-size: cover;
	background-position: center;
}

.wrapper {
	width: 420px;
	background: transparent;
	border: 1px solid #000; /* Black border */
	backdrop-filter: blur(6px);
	box-shadow: 0 0 10px rgba(255, 255, 255, .2);
	color: #000; /* Black text */
	padding: 40px 50px;
	border-radius: 20px; /* Rounded corners */
}

.wrapper h1 {
	font-size: 36px; /* Header font size */
	text-align: center;
	color: #000;
}

.wrapper .input-box {
	position: relative;
	width: 100%;
	height: 60px; /* Increased height for inputs */
	margin: 30px 0;
}

.input-box input {
	width: 100%;
	height: 100%;
	background: transparent;
	font-size: 18px; /* Increased font size for input */
	color: #000;
	padding: 20px 50px 20px 20px; /* Adjusted padding */
	border: 1px solid #000;;
	outline: none;
	/* Thin border for inputs */
	border-radius: 40px;
}

.input-box input::placeholder {
	color: #000; /* Black placeholder text */
}

.input-box i {
	position: absolute;
	right: 20px;
	top: 50%;
	transform: translateY(-50%);
	font-size: 24px; /* Increased icon size */
	color: #000;
}

.wrapper .btn {
	width: 100%;
	height: 50px; /* Height for button */
	background: #000; /* Button background */
	border: none;
	outline: none;
	border-radius: 40px; /* Rounded button corners */
	box-shadow: 0 0 10px rgba(0, 0, 0, .1);
	cursor: pointer;
	color: #fff; /* Button text color */
	font-size: 18px; /* Increased button text size */
	font-weight: 600;
}

.wrapper .btn:hover {
	background: rgba(0, 0, 0, .2);
	color: #fff;
	border-color: #fff;
}

.register-link {
	font-size: 14.5px;
	text-align: center;
	margin: 20px 0 15px;
	color: #000; /* Black text */
}

.register-link p a {
	color: #000; /* Link color */
	text-decoration: none;
	font-weight: 600;
}
.bxs-hide {
    font-size: 24px;
    color: #000;
}

.register-link p a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

    <div class="wrapper">
        <h1>Sign Up</h1>

        <div class="input-box">
            <input type="text" id="username" placeholder="UserName" required> <i class='bx bxs-user'></i>
        </div>

        <div class="input-box">
            <input type="text" id="mobile" placeholder="Mobile Number" required> <i class='bx bxs-phone'></i>
        </div>

        <div class="input-box">
    <input type="password" id="password" placeholder="Password" required>
    <i class='bx bxs-show' id="togglePassword" style="cursor: pointer; position: right; right: 50px; top: 50%; transform: translateY(-50%); font-size: 24px; color: #000;"></i>
</div>

        
        <div class="input-box">
            <input type="email" id="email" placeholder="Email" required> <i class='bx bxs-envelope'></i>
        </div>

        <button onclick="register()" class="btn">Sign Up</button>

        <div class="register-link">
            <p>
                Already have an account? <br> <a href="/SignIn.jsp">Login</a>
            </p>
        </div>

    </div>

</body>
<script>
// Toggle password visibility
document.getElementById("togglePassword").addEventListener("click", function () {
    const passwordField = document.getElementById("password");
    const type = passwordField.type === "password" ? "text" : "password";
    passwordField.type = type;

    // Toggle the eye icon
    this.classList.toggle("bxs-show");
    this.classList.toggle("bxs-hide");
});

// Registration functionality
function register() {
    var data = JSON.stringify({
        username: document.getElementById("username").value,
        password: document.getElementById("password").value,
        mobile: document.getElementById("mobile").value,
        email: document.getElementById("email").value
    });
    
    var url = "http://localhost:8080/user/register";
    callApi("POST", url, data, function(response) {
        handleRegisterResponse(response);
    });
}

function handleRegisterResponse(response) {
    if (response === "1") {
    	window.location.href = "/SignIn.jsp";
        alert(response);
         // Redirect after message
    } else {
        alert(response); // Display any errors
    }
}


function callApi(method, url, data, callback) {
    fetch(url, {
        method: method,
        headers: { 'Content-Type': 'application/json' },
        body: data
    })
    .then(response => response.text())
    .then(callback)
    .catch(error => alert("Error: " + error));
}
</script>