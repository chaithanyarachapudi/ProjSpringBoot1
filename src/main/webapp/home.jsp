<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Indian Culture and Heritage</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
@import
	url("https://fonts.googleapis.com/css?family=Montserrat&display=swap");

*, *::before, *::after {
	box-sizing: border-box;
}

body, html {
	margin: 0;
	padding: 0;
	font-family: "Montserrat", sans-serif;
}

.rain {
	position: absolute;
	right: 0;
	bottom: 0;
	min-width: 100%;
	min-height: 100%;
}

#top-video {
	left: 0;
	top: 0;
	height: 100vh;
	width: 100%;
	overflow: hidden;
	position: relative;
	z-index: -1;
}

#top-video::before {
	content: "";
	position: absolute;
	top: 0;
	right: 0;
	left: 0;
	bottom: 0;
	z-index: 1;
	background: linear-gradient(to right, rgba(0, 0, 255, 0.3),
		rgba(255, 0, 0, 0.25));
}

h1 {
	position: absolute;
	z-index: 3;
	color: #fff;
	left: 50%;
	top: 30%;
	transform: translate(-50%, -50%);
	width: 100%;
	font-size: 0;
	letter-spacing: 1.2em;
	text-shadow: 3px 3px 4px rgba(0, 0, 0, 0.5);
	text-align: center;
	opacity: 0;
}

.content {
	position: absolute;
	bottom: 0;
	background: linear-gradient(to top, black, transparent);
	color: #fff;
	width: 100%;
	padding: 2em 3em;
	z-index: 3;
}

.center-button {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 4;
	background-color: transparent; /* Transparent background */
	border: 20px solid gold; /* Green border */
	color: gold; /* Gold text color */
	font-weight: bold; /* Bold text */
	padding: 15px 20px;
	font-size: 1.5rem;
	border-radius: 20px;
	cursor: pointer;
	transition: background-color 0.3s ease, color 0.3s ease, border 0.3s
		ease;
}

.center-button:hover {
	background-color: lightgreen; /* Light green background on hover */
	color: #28a745; /* Green text on hover */
	border: 2px solid gold; /* Gold border on hover */
}
</style>
</head>
<body>
	<!-- Navigation Bar -->
	<header class="bg-danger">
		<nav class="navbar navbar-expand-lg navbar-dark container">
			<a class="navbar-brand" href="/home.jsp">Incredible India</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link text-light"
						href="/home.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link text-light"
						href="/SignIn.jsp">Sign In</a></li>
					<li class="nav-item"><a class="nav-link text-light"
						href="/SignUp.jsp">Sign Up</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<div id="top-video">
		<video autoplay muted loop class="rain">
			<source src="/templates/static/home1.mp4">
		</video>
		<h1 class="rain-text">rain</h1>
		<h1 class="rain-text">regen</h1>
		<h1 class="rain-text">비</h1>
		<h1 class="rain-text">pluie</h1>
		<h1 class="rain-text">雨</h1>
		<h1 class="rain-text">дождь</h1>

		<!-- Start Your Journey Button -->
		<button class="center-button"
			onclick="window.location.href='/SignIn.jsp'">Start Your
			Journey</button>

		<div class="content">
			<p id="desc">The important characteristics of Indian Culture are
				civilized communication, beliefs, values, etiquette, and rituals.
				India is well known for its 'Unity in Diversity' across the world.
				That means India is a diverse nation where many religious people
				live together peacefully having their own different cultures.</p>
		</div>
	</div>

</body>
</html>
