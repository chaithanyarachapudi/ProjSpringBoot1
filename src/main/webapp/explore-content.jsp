<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Explore Content - Indian Culture and Heritage</title>
<link rel="stylesheet" href="style.css">
<style>
body {
	font-family: 'Poppins', sans-serif;
	background-image: url('templates/static/bg.jpeg');
	background-repeat: no-repeat;
	background-size: cover;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
}

.navbar {
	background-color: #333;
	color: #fff;
	padding: 15px;
	text-align: center;
	width: 100%;
}

.navbar h1 {
	margin: 0;
	font-size: 24px;
}

.container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	margin: 20px;
}

.card {
	background-color: #fff;
	width: 300px;
	height: 200px;
	margin: 15px;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	cursor: pointer;
	text-align: center;
	transition: transform 0.3s ease-in-out;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.card:hover {
	background-color: #C0C0C0;
	transform: scale(1.05);
}

.card h4 {
	margin-bottom: 10px;
}

.card p {
	font-size: 14px;
	color: #777;
}

.btn {
	padding: 10px 20px;
	background-color: #3498db;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	text-decoration: none;
}

.btn:hover {
	background-color: #2980b9;
}

.card-btn {
	display: inline-block;
	margin-top: 10px;
	padding: 10px 20px;
	background-color: #3498db;
	color: white;
	text-decoration: none;
	border-radius: 5px;
	cursor: pointer;
}

.card-btn:hover {
	background-color: #2980b9;
}
</style>
</head>
<body>
	<div class="navbar">
		<h1>Explore Content - Indian Culture and Heritage</h1>
	</div>

	<div class="container">
		<div class="card" onclick="fetchContent('tourism.jsp')">
			<h4>Beautiful Tourism Places</h4>
			<p>Discover India’s most iconic tourist destinations like Taj
				Mahal, Jaipur’s forts, and more!</p>
			<a href="tourism" class="btn">Explore</a>
		</div>

		<div class="card" onclick="fetchContent('food.jsp')">
			<h4>Food of India</h4>
			<p>Explore the diverse and delicious cuisines of India, from
				street food to royal feasts.</p>
			<a href="food" class="btn">Explore</a>
		</div>

		<div class="card" onclick="fetchContent('lifestyle-details.jsp')">
			<h4>Indian Lifestyle</h4>
			<p>Learn about the vibrant and dynamic lifestyles across
				different states of India.</p>
			<a href="lifestyle-details" class="btn">Explore</a>
		</div>

		<div class="card" onclick="fetchContent('traditions.jsp')">
			<h4>Spirituals Of India</h4>
			<p>Dive into India’s rich traditions, cultural practices, and
				diverse heritage.</p>
			<a href="traditions" class="btn">Explore</a>
		</div>

		<div class="card" onclick="fetchContent('festivals.jsp')">
			<h4>Festivals of India</h4>
			<p>Experience the joy and cultural significance of India's
				numerous festivals.</p>
			<a href="festivals" class="btn">Explore</a>
		</div>

		<div class="card" onclick="fetchContent('arts.jsp')">
			<h4>Indian Arts and Crafts</h4>
			<p>Uncover the exquisite arts and handicrafts that have been an
				integral part of Indian culture.</p>
			<a href="arts" class="btn">Explore</a>
		</div>
	</div>
	<button onclick="window.location.href='/visitor-dashboard.jsp'"
		class="card-btn">Back</button>
</body>
</html>
<script>
function fetchContent(category) {
    const apiKey = 'AIzaSyDlwIQQqwCiWvHJJwmdxgWwlINZ8Ox_6YM';
    
    fetch(`http://localhost:8080/api/${category}`, {
        method: 'GET',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${apiKey}`
        }
    })
    .then(response => response.json())
    .then(data => {
        console.log("API response data:", data);
        localStorage.setItem('apiData', JSON.stringify(data));
        window.location.href = `${category}`;
    })
    .catch(error => {
        console.error('Error fetching data:', error);
    });
}

</script>
