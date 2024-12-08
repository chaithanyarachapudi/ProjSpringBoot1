<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Food of India</title>
<link rel="stylesheet" href="styles.css">
<style>
body {
	background-image:
		url('https://tse3.mm.bing.net/th?id=OIP.NSR8vvQz97JZTn1rYjpQqQHaFj&pid=Api&P=0&h=180');
	/* Replace with your image */
	background-size: cover;
	font-family: Arial, sans-serif;
	margin: 0;
	color: #fff;
}

header {
	text-align: center;
	padding: 2rem;
	background: rgba(0, 0, 0, 0.7);
}

h1 {
	color: #ff77a3; /* Light pink */
}

h2 {
	color: #ffeb3b; /* Bright yellow */
}

main {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin: 20px;
}

.cuisine {
	display: flex;
	width: 90%;
	max-width: 800px;
	margin: 20px 0;
	border-radius: 10px;
	background: #A0A0A0;
}

.image {
	flex: 1;
	display: flex;
	justify-content: center;
	align-items: center;
}

.image img {
	width: 100%;
	height: auto;
	max-height: 300px; /* Adjust as needed */
	border-radius: 10px;
}

.details {
	flex: 1;
	padding: 15px;
}

footer {
	text-align: center;
	padding: 1rem;
	background: rgba(0, 0, 0, 0.7);
	position: relative;
	bottom: 0;
	width: 100%;
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
	<header>
		<h1>Explore the Food of India</h1>
		<p>Discover the rich and diverse culinary traditions across the
			Indian states.</p>


	</header>
	<button onclick="window.location.href='/explore-content'"
		class="card-btn">Back</button>
	<main>
		<section class="cuisine">
			<div class="image">
				<img
					src="https://upload.wikimedia.org/wikipedia/commons/f/fe/Chicken_Biryani.jpg"
					alt="Biryani" />
			</div>
			<div class="details">
				<h2>Biryani</h2>
				<p>Aromatic rice dish with spices and meat, famous in many
					regions, especially Hyderabad.</p>
			</div>
		</section>
		<section class="cuisine">
			<div class="image">
				<img
					src="https://upload.wikimedia.org/wikipedia/commons/5/5c/Samosa_at_BarCampMumbai4.jpg"
					alt="Samosa" />
			</div>
			<div class="details">
				<h2>Samosa</h2>
				<p>Deep-fried pastry filled with spiced potatoes, peas, and
					sometimes meat, popular as a snack.</p>
			</div>
		</section>
		<section class="cuisine">
			<div class="image">
				<img
					src="https://upload.wikimedia.org/wikipedia/commons/e/e5/Butter_Chicken_0000x0000_0.jpg"
					alt="Butter Chicken" />
			</div>
			<div class="details">
				<h2>Butter Chicken</h2>
				<p>Rich and creamy chicken curry made with butter and tomatoes,
					originating from Delhi.</p>
			</div>
		</section>
		<section class="cuisine">
			<div class="image">
				<img
					src="https://upload.wikimedia.org/wikipedia/commons/0/0b/Dosa_and_ghee.jpg"
					alt="Dosa" />
			</div>
			<div class="details">
				<h2>Dosa</h2>
				<p>Thin and crispy pancake made from fermented rice and lentil
					batter, a staple in South India.</p>
			</div>
		</section>
		<section class="cuisine">
			<div class="image">
				<img
					src="https://upload.wikimedia.org/wikipedia/commons/0/00/CHOLE_BHATURE.JPG"
					alt="Chole Bhature" />
			</div>
			<div class="details">
				<h2>Chole Bhature</h2>
				<p>Spicy chickpea curry served with deep-fried bread, a popular
					dish in North India.</p>
			</div>
		</section>
		<section class="cuisine">
			<div class="image">
				<img
					src="https://upload.wikimedia.org/wikipedia/commons/6/63/Pav_Bhaji.jpg"
					alt="Pav Bhaji" />
			</div>
			<div class="details">
				<h2>Pav Bhaji</h2>
				<p>Spicy vegetable mash served with buttered bread rolls, a
					famous street food in Mumbai.</p>
			</div>
		</section>
		<section class="cuisine">
			<div class="image">
				<img
					src="https://upload.wikimedia.org/wikipedia/commons/b/b7/Momo.jpg"
					alt="Momos" />
			</div>
			<div class="details">
				<h2>Momos</h2>
				<p>Steamed dumplings filled with vegetables or meat, popular in
					the northeastern regions.</p>
			</div>
		</section>
		<a href="https://www.cozymeal.com/magazine/indian-food"
			target="_blank">Explore More food items</a>
	</main>
	<footer>
		<p>&copy; 2024 Explore India. All rights reserved.</p>
	</footer>
</body>
</html>
