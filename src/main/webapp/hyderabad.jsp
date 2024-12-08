<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Taj Mahal 360 Virtual Tour</title>
<script src="https://aframe.io/releases/1.0.4/aframe.min.js"></script>
<script
	src="https://unpkg.com/aframe-event-set-component@5/dist/aframe-event-set-component.min.js"></script>
<script
	src="https://unpkg.com/aframe-layout-component@5.3.0/dist/aframe-layout-component.min.js"></script>
<script
	src="https://unpkg.com/aframe-template-component@3.2.1/dist/aframe-template-component.min.js"></script>
<script
	src="https://unpkg.com/aframe-proxy-event-component@2.1.0/dist/aframe-proxy-event-component.min.js"></script>
<style>
body {
	margin: 0;
	overflow: hidden; /* Prevent scrolling */
	font-family: 'Poppins', sans-serif;
}

.back-button {
	position: absolute;
	top: 20px;
	left: 20px;
	background-color: #28a745;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	text-decoration: none;
	z-index: 100; /* Ensure button is above other elements */
}

.back-button:hover {
	background-color: #218838;
}
/* Style for the map */
.map-container {
	position: absolute;
	bottom: 20px;
	left: 20px; /* Positioned on the left now */
	width: 600px;
	height: 450px;
	z-index: 50;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

iframe {
	width: 100%;
	height: 100%;
	border: 0;
}
</style>
</head>
<body>

	<!-- Back Button -->
	<a href="virtual-tour" class="back-button">Back to Virtual
		Tours</a>

	<a-scene> <a-assets> <!-- Update the src attribute with the URL of p04.jpg -->
	<img id="city" crossorigin="anonymous"
		src="templates/static/images/hampi.jpg"> </a-assets> <!-- 360-degree image. -->
	<a-sky id="image-360" radius="10" src="#city"
		animation__fade="property: components.material.material.color; type: color; from: #FFF; to: #000; dur: 300; startEvents: fade"
		animation__fadeback="property: components.material.material.color; type: color; from: #000; to: #FFF; dur: 300; startEvents: animationcomplete__fade"></a-sky>

	<!-- Camera + cursor. --> <a-entity camera look-controls> <a-cursor
		id="cursor"
		animation__click="property: scale; startEvents: click; from: 0.1 0.1 0.1; to: 1 1 1; dur: 150"
		animation__fusing="property: fusing; startEvents: fusing; from: 1 1 1; to: 0.1 0.1 0.1; dur: 1500"
		event-set__mouseenter="_event: mouseenter; color: springgreen"
		event-set__mouseleave="_event: mouseleave; color: black"
		raycaster="objects: .link"></a-cursor> </a-entity> </a-scene>
	<div class="map-container">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945976.5912275873!2d73.67892895735724!3d15.020836621445019!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba35a4c37bf488f%3A0x41f1d28cd1757cd5!2sKarnataka!5e0!3m2!1sen!2sin!4v1728365348544!5m2!1sen!2sin"
			width="600" height="450" style="border: 0;" allowfullscreen=""
			loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	</div>
</body>
</html>