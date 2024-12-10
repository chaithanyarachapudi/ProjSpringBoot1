<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Indian Arts and Crafts</title>
<link rel="stylesheet" href="styles.css">
<style>
body {
	background-image:
		url('https://tse3.mm.bing.net/th?id=OIP.NSR8vvQz97JZTn1rYjpQqQHaFj&pid=Api&P=0&h=180');
	/* Replace with your image */
	background-size: cover;
	font-family: Arial, sans-serif; /* Font style for the entire page */
}

header {
	background: linear-gradient(135deg, #ff5f6d, #ffc371);
	/* Gradient background for the header */
	padding: 20px; /* Padding around the header */
}

h1, h2 {
	color: #4a4a4a; /* Darker color for headings */
}

p {
	color: #555; /* Medium gray color for paragraphs */
}

.container {
	margin-top: 20px; /* Space above the main container */
}

.list-group {
	max-width: 800px; /* Limit the maximum width of the list group */
	margin: 0 auto; /* Center the list group */
}

.list-group-item {
	background-color: #fff; /* White background for list items */
	border: 1px solid #ddd; /* Light gray border */
	margin-bottom: 10px; /* Space between list items */
	padding: 15px; /* Padding inside list items */
	transition: background-color 0.3s;
	/* Smooth transition for hover effect */
}

.list-group-item:hover {
	background-color: #f1f1f1; /* Light gray background on hover */
}

footer {
	background-color: #333; /* Dark footer background */
	color: white; /* White text color for footer */
	padding: 10px; /* Padding around the footer */
	position: relative; /* Position footer at the bottom */
	bottom: 0;
	width: 100%; /* Full width footer */
}

.btn {
	background-color: #ff5f6d; /* Button background color */
	color: white; /* Button text color */
	border: none; /* Remove border */
	padding: 10px 20px; /* Padding around button */
	border-radius: 5px; /* Rounded corners */
	transition: background-color 0.3s;
	/* Smooth transition for hover effect */
}

.btn:hover {
	background-color: #ffc371; /* Change button color on hover */
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
.list-group-item img {
    width: 100%;
    height: auto;
    max-height: 300px;
    border-radius: 10px 0 0 10px;
}
</style>
</head>
<body>
	<header>
		<h1>Indian Arts and Crafts</h1>
		<p>Uncover the exquisite arts and handicrafts that have been an
			integral part of Indian culture.</p>
	</header>
	<button onclick="window.location.href='/explore-content.jsp'"
		class="card-btn">Back</button>

	<main class="container">
		<div class="list-group">
			<div class="list-group-item">
				
				<h2>Pattachitra</h2>
				<p>A traditional cloth-based painting from Odisha, depicting
					mythological narratives.</p>
				<a href="https://en.wikipedia.org/wiki/Pattachitra" target="_blank">Learn
					more about Pattachitra</a>
			</div>
			
			<div class="list-group-item">
				<h2>Kalamkari</h2>
				<p>Hand-painted or block-printed cotton textile with intricate
					designs from Andhra Pradesh.</p>
				<a href="https://en.wikipedia.org/wiki/Kalamkari" target="_blank">Learn
					more about Kalamkari</a>
			</div>
			<div class="list-group-item">
				<h2>Warli Art</h2>
				<p>A tribal art form from Maharashtra characterized by simple
					geometric shapes and motifs.</p>
				<a href="https://en.wikipedia.org/wiki/Warli_painting"
					target="_blank">Learn more about Warli Art</a>
			</div>
			<div class="list-group-item">
				<h2>Meenakari</h2>
				<p>An intricate art of enamel work on metal, mainly seen in
					jewelry and decorative items.</p>
				<a href="https://en.wikipedia.org/wiki/M%C4%ABn%C4%81k%C4%81r%C4%AB"
					target="_blank">Learn more about Meenakari</a>
			</div>
			<div class="list-group-item">
				<h2>Blue Pottery</h2>
				<p>A famous handicraft of Rajasthan, known for its vibrant blue
					color and intricate designs.</p>
				<a href="https://en.wikipedia.org/wiki/Blue_pottery_of_Jaipur"
					target="_blank">Learn more about Blue Pottery</a>
			</div>
		</div>
	</main>

	<footer>
		<p>&copy; 2024 Explore India. All rights reserved.</p>
	</footer>
</body>
</html>
