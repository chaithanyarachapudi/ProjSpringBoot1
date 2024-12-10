<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard - Indian Culture and Heritage</title>
<link rel="stylesheet" href="style.css">
<style>
body {
	font-family: 'Poppins', sans-serif;
	background-image: url('templates/static/bg.jpeg');
	background-repeat: no-repeat;
	background-size: cover;
	margin: 0;
	padding: 0;
}

.navbar {
	background-color: #333;
	color: #fff;
	padding: 15px;
	text-align: center;
}

.navbar h1 {
	margin: 0;
	font-size: 24px;
}

.container {
	display: flex;
	justify-content: space-between;
	margin: 20px;
}

.sidebar {
	width: 20%;
	background-color: #2c3e50;
	padding: 15px;
	color: #fff;
}

.sidebar h2 {
	text-align: center;
	font-size: 20px;
	margin-bottom: 20px;
}

.sidebar a {
	color: #fff;
	text-decoration: none;
	padding: 10px;
	display: block;
	border-radius: 5px;
	transition: background 0.3s;
}

.sidebar a:hover {
	background-color: #1abc9c;
}

.content {
	width: 75%;
	padding: 20px;
	background-color: transparent;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.content h2 {
	color: white;
	text-align: center;
	margin-bottom: 20px;
}

.btn {
	padding: 10px 20px;
	background-color: #3498db;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background 0.3s;
	margin-bottom: 10px;
}

.btn:hover {
	background-color: #2980b9;
}

.card {
	background-color: #ecf0f1;
	padding: 20px;
	margin: 10px 0;
	border-radius: 5px;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}

.card:hover {
	background-color: #C0C0C0;
}

.management-area {
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 15px;
	margin-top: 20px;
}

.management-area h3 {
	margin-bottom: 10px;
}

.management-area textarea {
	width: 100%;
	height: 80px;
	padding: 10px;
	border-radius: 5px;
	border: 1px solid #ccc;
}

.management-area button {
	margin-top: 10px;
}
</style>
</head>
<body>

	<div class="navbar">
		<h1>Indian Culture and Heritage - Admin Dashboard</h1>
	</div>

	<div class="container">
		<div class="sidebar">
			<h2>Admin Menu</h2>
			<a href="/manage-content.jsp">Manage Content</a>
			<a href="/user-management.jsp">User Management</a>
			<a href="#reviewDiscussions">Review Discussions</a>
			<a href="/home.jsp">Logout</a>
		</div>

		<div class="content">
			<h2>Welcome, Admin!</h2>

			<div class="card" id="manageContent">
				<h3>Manage Content</h3>
				<p>Create, edit, or delete articles and resources about Indian culture and heritage.</p>
				<button class="btn" onclick="window.location.href='manage-content.jsp'">Go to Content Management</button>
			</div>

			<div class="card" id="userManagement">
				<h3>User Management</h3>
				<p>View and manage user roles, permissions, and activities.</p>
				<button class="btn" onclick="window.location.href='user-management.jsp'">Manage Users</button>
			</div>

			
			 <div class="card" id="reviewDiscussions">
			 <h3>Review Cultural Discussions</h3>
		        <div class="comment-section">
		            <h2>Visitor Comments</h2>
		            <div id="commentLog">
		                <!-- Visitor comments will be displayed here -->
		            </div>
		        </div>
    		</div>
		</div>
	</div>

	<script>
    async function loadComments() {
        const commentLog = document.getElementById('commentLog');
        try {
            const response = await fetch("https://s35team15.up.railway.app/comments");
            const commentList = await response.json();

            commentList.forEach(comment => {
                const commentItem = document.createElement('div');
                commentItem.className = 'comment-item';
                commentItem.innerHTML = `
                    <p><strong>User:</strong> ${comment.username}</p>
                    <p><strong>Rating:</strong> ${comment.rating} stars</p>
                    <p><strong>Comment:</strong> ${comment.comment}</p>
                    <hr>
                `;
                commentLog.appendChild(commentItem);
            });
        } catch (error) {
            console.error("Error loading comments:", error);
        }
    }

    // Load comments on page load
    document.addEventListener('DOMContentLoaded', loadComments);
</script>

</body>
</html>
