<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Virtual Tour of Historical Places</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: url('/templates/static/images/bg.jpg');
	margin: 0;
	padding: 20px;
}
/* Navbar styling */
.navbar {
	background-color: black;
	color: orange;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 20px;
}

.navbar h1 {
	margin: 0;
	font-size: 24px;
}

.navbar a {
	background-color: #28a745;
	color: white;
	padding: 10px 20px;
	text-decoration: none;
	border-radius: 5px;
	transition: background-color 0.3s;
}

.navbar a:hover {
	background-color: #218838;
}
/* Main content styling */
.container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
	max-width: 1200px;
	margin: auto;
	padding-top: 50px; /* Space for the navbar */
}

.card {
	background: rgba(255, 255, 255, 0.8);
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 220px;
	height: 300px;
	margin: 15px;
	padding: 20px;
	text-align: center;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	transition: transform 0.2s;
}

.card:hover {
	transform: scale(1.05);
}

.btn {
	background-color: #28a745;
	color: white;
	padding: 10px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	text-decoration: none;
	margin-top: auto;
}

.btn:hover {
	background-color: #218838;
}
</style>
</head>
<body>

	<!-- Navbar with heading and Back to Dashboard button in the same row -->
	<div class="navbar">
		<h1>Virtual Tour of Historical Places</h1>
		<a href="visitor-dashboard.jsp">Back to Dashboard</a>
	</div>

	<div class="container">
		<div class="card">
			<h3>Uttar Pradesh</h3>
			<p>A symbol of love and one of the Seven Wonders of the World.</p>
			<a href="tajmahal-tour.jsp" class="btn">View Tour</a>
		</div>
		<div class="card">
			<h3>Delhi</h3>
			<p>The Lotus Temple is a Baháʼí House of Worship located in New
				Delhi, India. It was completed in December 1986.</p>
			<a href="delhi-tour.jsp" class="btn">View Tour</a>
		</div>
		<div class="card">
			<h3>Goa</h3>
			<p>Known for its ruins and stunning architecture.</p>
			<a href="goa-tour.jsp" class="btn">View Tour</a>
		</div>
		<div class="card">
			<h3>Rajasthan</h3>
			<p>Rajasthan, also known as the “Land of Kings,” is India's
				largest state in terms of area.</p>
			<a href="Jaipur-tour.jsp" class="btn">View Tour</a>
		</div>
		<div class="card">
			<h3>Hyderabad</h3>
			<p>Known for its rich history and architecture, including the
				Charminar.</p>
			<a href="hyderabad.jsp" class="btn">View Tour</a>
		</div>
		<div class="card">
			<h3>Maharashtra</h3>
			<p>Famous for rock-cut Buddhist caves and stunning frescoes.</p>
			<a href="ajanta-tour.jsp" class="btn">View Tour</a>
		</div>
		<div class="card">
			<h3>Madhya Pradesh</h3>
			<p>Renowned for its intricate temples with erotic sculptures.</p>
			<a href="khajuraho.jsp" class="btn">View Tour</a>
		</div>
		<div class="card">
			<h3>Karnataka</h3>
			<p>Hampi, a UNESCO World Heritage site known for its ancient
				temples and ruins.</p>
			<a href="hampi-tour.jsp" class="btn">View Tour</a>
		</div>
		<div class="card">
			<h3>Andhra Pradesh</h3>
			<p>Tirupati, a UNESCO World Heritage site known for its ancient
				temples and ruins.</p>
			<a href="tirupati-tour.jsp" class="btn">View Tour</a>
		</div>
	</div>

</body>
</html>
