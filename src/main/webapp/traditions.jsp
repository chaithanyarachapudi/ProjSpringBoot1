<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Indian Spirituals</title>
<link rel="stylesheet" href="styles.css">
<!-- Link to your CSS -->
<style>
/* General styles */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-image:
		url('https://tse3.mm.bing.net/th?id=OIP.NSR8vvQz97JZTn1rYjpQqQHaFj&pid=Api&P=0&h=180');
	/* Replace with your image */
	background-size: cover;
	color: #333;
}
/* Cards container */
.cards-container {
	max-width: 1200px;
	margin: 0 auto;
	padding: 20px;
}

.cards-container h1 {
	text-align: center;
	margin-bottom: 30px;
	font-size: 32px;
	color: #2c3e50;
}

/* Cards grid */
.cards-grid {
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	gap: 20px;
}

.card {
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	overflow: hidden;
	text-align: center;
	padding: 20px;
}

.card img {
	width: 100%;
	height: 200px;
	object-fit: cover;
}

.card h3 {
	font-size: 20px;
	color: #e74c3c;
	margin: 10px 0;
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

/* Footer styling */
footer {
	background-color: #34495e;
	color: #ecf0f1;
	text-align: center;
	padding: 10px;
	position: relative;
	bottom: 0;
	width: 100%;
}

.hidden {
	display: none;
}

.iframe-container {
	margin-top: 20px;
	text-align: center;
}

iframe {
	width: 100%;
	height: 500px;
	border: none;
}

header {
	text-align: center;
	padding: 2rem;
	background: rgba(0, 0, 0, 0.7);
	color: orange
}
</style>
</head>
<body>

	<!-- Main Content -->
	<header>
		<h1>Holy Books of Indian Spiritual Traditions</h1>
	</header>
	<!-- Back Button -->
	<button onclick="window.location.href='/explore-content'"
		class="card-btn">Back</button>
	<section class="cards-container">

		<div class="cards-grid">
			<!-- Bhagavad Gita Card with embedded iframe -->
			<div class="card">
				<img
					src="https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9798887620237/bhagavad-gita-9798887620237_hr.jpg"
					alt="Bhagavad Gita">
				<h3>Bhagavad Gita</h3>
				<button class="card-btn" onclick="toggleBhagavadGita()">Read
					Now</button>
			</div>

			<!-- Vedas Card with embedded iframe -->
			<div class="card">
				<img
					src="https://www.researchgate.net/publication/352785786/figure/fig3/AS:1039571676565511@1624864610767/Fig-3-Images-of-books-of-four-Vedas-and-a-page-of-veda-Physiological-concepts-of.jpg"
					alt="Vedas">
				<h3>Vedas</h3>
				<button class="card-btn" onclick="toggleVedas()">Read Now</button>
			</div>

			<!-- Upanishads Card with embedded iframe -->
			<div class="card">
				<img
					src="https://images.booksense.com/images/605/617/9789356617605.jpg"
					alt="Upanishads">
				<h3>Upanishads</h3>
				<button class="card-btn" onclick="toggleUpanishads()">Read
					Now</button>
			</div>

			<!-- Ramayana Card with embedded iframe -->
			<div class="card">
				<img src="https://5.imimg.com/data5/EK/EY/MY-43915840/ramayana.jpg"
					alt="Ramayana">
				<h3>Ramayana</h3>
				<button class="card-btn" onclick="toggleRamayana()">Read
					Now</button>
			</div>

			<!-- Bible Card with embedded iframe -->
			<div class="card">
				<img
					src="https://m.media-amazon.com/images/I/71X+XPCjKwL._UF1000,1000_QL80_.jpg"
					alt="Bible">
				<h3>Bible</h3>
				<button class="card-btn" onclick="toggleBible()">Read Now</button>
			</div>

			<!-- Quran Card with embedded iframe -->
			<div class="card">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT74USdxtNBG52OXMzm1I44mX7ApaFa_hgOrzZgibmcEzjsuFmPkb-N1CLNcjfqwtgtb_E&usqp=CAU"
					alt="Quran">
				<h3>Quran</h3>
				<button class="card-btn" onclick="toggleQuran()">Read Now</button>
			</div>

			<!-- Mahabharata Card with embedded iframe -->
			<div class="card">
				<img
					src="https://i.pinimg.com/originals/0c/80/85/0c8085d73d74984f936dab924b1cfc4b.jpg"
					alt="Mahabharata">
				<h3>Mahabharata</h3>
				<button class="card-btn" onclick="toggleMahabharata()">Read
					Now</button>
			</div>
		</div>

		<!-- Iframe for Bhagavad Gita -->
		<div id="bhagavad-gita-iframe" class="iframe-container hidden">
			<iframe src="https://archive.org/embed/in.ernet.dli.2015.191113"
				width="560" height="384" frameborder="0"
				webkitallowfullscreen="true" mozallowfullscreen="true"
				allowfullscreen></iframe>
		</div>

		<!-- Iframe for Vedas -->
		<div id="vedas-iframe" class="iframe-container hidden">
			<iframe src="https://archive.org/embed/bookofvedas00arya"
				allowfullscreen></iframe>
		</div>

		<!-- Iframe for Upanishads -->
		<div id="upanishads-iframe" class="iframe-container hidden">
			<iframe src="https://archive.org/embed/in.ernet.dli.2015.205088"
				allowfullscreen></iframe>
		</div>

		<!-- Iframe for Ramayana -->
		<div id="ramayana-iframe" class="iframe-container hidden">
			<iframe
				src="https://archive.org/embed/ValmikiRamayana-ABookOfWilderness"
				allowfullscreen></iframe>
		</div>

		<!-- Iframe for Bible -->
		<div id="bible-iframe" class="iframe-container hidden">
			<iframe src="https://archive.org/embed/mybookofbiblesto00watc_1"
				width="560" height="384" frameborder="0"
				webkitallowfullscreen="true" mozallowfullscreen="true"
				allowfullscreen></iframe>
		</div>

		<!-- Iframe for Quran -->
		<div id="quran-iframe" class="iframe-container hidden">
			<iframe src="https://archive.org/embed/safia_201603" width="560"
				height="384" frameborder="0" webkitallowfullscreen="true"
				mozallowfullscreen="true" allowfullscreen></iframe>
		</div>

		<!-- Iframe for Mahabharata -->
		<div id="mahabharata-iframe" class="iframe-container hidden">
			<iframe src="https://archive.org/embed/02.-mahabharata-volume-2"
				width="560" height="384" frameborder="0"
				webkitallowfullscreen="true" mozallowfullscreen="true"
				allowfullscreen></iframe>
		</div>
	</section>

	<!-- Footer -->
	<footer>
		<p>&copy; 2024 Indian Spirituals WebApp</p>
	</footer>

	<script>
        function closeAllIframes() {
            document.getElementById('bhagavad-gita-iframe').classList.add('hidden');
            document.getElementById('vedas-iframe').classList.add('hidden');
            document.getElementById('upanishads-iframe').classList.add('hidden');
            document.getElementById('ramayana-iframe').classList.add('hidden');
            document.getElementById('bible-iframe').classList.add('hidden');
            document.getElementById('quran-iframe').classList.add('hidden');
            document.getElementById('mahabharata-iframe').classList.add('hidden');
        }

        function toggleBhagavadGita() {
            closeAllIframes();
            const iframeContainer = document.getElementById('bhagavad-gita-iframe');
            iframeContainer.classList.toggle('hidden');
        }

        function toggleVedas() {
            closeAllIframes();
            const iframeContainer = document.getElementById('vedas-iframe');
            iframeContainer.classList.toggle('hidden');
        }

        function toggleUpanishads() {
            closeAllIframes();
            const iframeContainer = document.getElementById('upanishads-iframe');
            iframeContainer.classList.toggle('hidden');
        }

        function toggleRamayana() {
            closeAllIframes();
            const iframeContainer = document.getElementById('ramayana-iframe');
            iframeContainer.classList.toggle('hidden');
        }

        function toggleBible() {
            closeAllIframes();
            const iframeContainer = document.getElementById('bible-iframe');
            iframeContainer.classList.toggle('hidden');
        }

        function toggleQuran() {
            closeAllIframes();
            const iframeContainer = document.getElementById('quran-iframe');
            iframeContainer.classList.toggle('hidden');
        }

        function toggleMahabharata() {
            closeAllIframes();
            const iframeContainer = document.getElementById('mahabharata-iframe');
            iframeContainer.classList.toggle('hidden');
        }
    </script>

</body>
</html>
