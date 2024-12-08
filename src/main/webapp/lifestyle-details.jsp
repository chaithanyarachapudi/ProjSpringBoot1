<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Indian Lifestyle</title>
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    background-image: url('https://tse3.mm.bing.net/th?id=OIP.NSR8vvQz97JZTn1rYjpQqQHaFj&pid=Api&P=0&h=180');
    background-size: cover;
    color: black;
}

header {
    padding: 2rem;
    color: black;
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: rgba(0,0,0,0.5);
}

h1 {
    color: #ff77a3;
}

.card-container {
    display: flex;
    width: 90%;
    max-width: 800px;
    margin: 20px auto;
    border-radius: 10px;
    background: #333;
    color: white;
    overflow: hidden;
    transition: transform 0.3s, box-shadow 0.3s;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.card-container:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
}

.card-container img {
    width: 100%;
    height: auto;
    max-height: 300px;
    border-radius: 10px 0 0 10px;
}

.card-content {
    padding: 20px;
    flex: 1;
}

.card-content h2 {
    color: #ff77a3;
    font-size: 1.5rem;
    margin-bottom: 10px;
}

.card-content p {
    color: #ddd;
    font-size: 1rem;
    line-height: 1.5;
}

.food-culture-link {
    text-decoration: none;
    color: inherit;
    display: block;
}

.food-culture-link:hover {
    color: #ff77a3;
    background-color: rgba(255, 255, 255, 0.1);
    border-radius: 8px;
    padding: 10px;
}

footer {
    text-align: center;
    padding: 1rem;
    background: rgba(0, 0, 0, 0.7);
    color: white;
}
</style>
</head>
<body>

<header class="text-center d-flex align-items-center justify-content-between">
    <div>
        <h1>Discover the Indian Lifestyle</h1>
        <p>Explore the rich tapestry of culture, traditions, and daily life across different states of India.</p>
    </div>
    <button onclick="window.location.href='/explore-content'" class="btn btn-primary">
        Back
    </button>
</header>

<main class="container my-4">
    <div class="card-container">
        <div class="image">
            <img src="https://upload.wikimedia.org/wikipedia/commons/3/3e/Vegetarian_Andhra_Meal.jpg" alt="Traditional Indian Meal" class="img-fluid rounded">
        </div>
        <div class="card-content">
            <a href="https://en.wikipedia.org/wiki/List_of_Indian_dishes" target="_blank" class="food-culture-link">
                <h2>Food Culture</h2>
                <p>Indian food varies significantly by region, showcasing unique flavors and ingredients. From spicy curries in the south to rich biryanis in the north, each dish reflects the local culture and history.</p>
            </a>
        </div>
    </div>

    <div class="card-container">
        <div class="image">
            <img src="https://upload.wikimedia.org/wikipedia/commons/5/5e/Deepawali-festival.jpg" alt="Indian Festival" class="img-fluid rounded">
        </div>
        <div class="card-content">
            <a href="https://en.wikipedia.org/wiki/List_of_Hindu_festivals#Observance_periods_(tithi)" target="_blank" class="food-culture-link">
                <h2>Festivals</h2>
                <p>India is known for its vibrant festivals such as Diwali, Holi, and Eid, celebrated with great enthusiasm. Each festival has its own unique customs, rituals, and significance.</p>
            </a>
        </div>
    </div>

    <div class="card-container">
        <div class="image">
            <img src="https://upload.wikimedia.org/wikipedia/commons/5/50/India_Art_Festival_Top_View.jpg" alt="Traditional Dance" class="img-fluid rounded">
        </div>
        <div class="card-content">
            <a href="https://en.wikipedia.org/wiki/Dance_in_India#Classical_dance" target="_blank" class="food-culture-link">
                <h2>Art and Dance</h2>
                <p>India boasts a rich heritage of arts and dance forms, from Bharatanatyam in Tamil Nadu to Kathak in Uttar Pradesh. Each form is steeped in history and tells stories through expressive movements.</p>
            </a>
        </div>
    </div>

    <div class="card-container">
        <div class="image">
            <img src="https://upload.wikimedia.org/wikipedia/commons/d/df/Styles_of_Sari.jpg" alt="Traditional Indian Clothing" class="img-fluid rounded">
        </div>
        <div class="card-content">
            <a href="https://en.wikipedia.org/wiki/Clothing_in_India" target="_blank" class="food-culture-link">
                <h2>Clothing</h2>
                <p>Traditional clothing varies across states, reflecting the cultural identity of each region. Sarees, lehengas, and kurtas are popular, each with unique designs and significance.</p>
            </a>
        </div>
    </div>

    <div class="card-container">
        <div class="image">
            <img src="https://upload.wikimedia.org/wikipedia/commons/f/ff/Karla_caves_Chaitya.jpg" alt="Indian Architecture" class="img-fluid rounded">
        </div>
        <div class="card-content">
            <a href="https://en.wikipedia.org/wiki/Architecture_of_India" target="_blank" class="food-culture-link">
                <h2>Architecture</h2>
                <p>India’s architecture ranges from ancient temples to modern skyscrapers, showcasing the country’s diverse history and artistic expression. Landmarks like the Taj Mahal are renowned worldwide.</p>
            </a>
        </div>
    </div>

    <div class="card-container">
        <div class="image">
            <img src="https://upload.wikimedia.org/wikipedia/commons/7/76/Indian_culture_music.jpg" alt="Indian Music" class="img-fluid rounded">
        </div>
        <div class="card-content">
            <a href="https://en.wikipedia.org/wiki/Music_of_India" target="_blank" class="food-culture-link">
                <h2>Music</h2>
                <p>Indian music is a fusion of traditional and modern styles. Classical music forms like Hindustani and Carnatic coexist with contemporary genres, reflecting the country's dynamic cultural landscape.</p>
            </a>
        </div>
    </div>
</main>

<footer class="text-center bg-dark text-white py-4">
    <p>&copy; 2024 Explore India. All rights reserved.</p>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
