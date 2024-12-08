<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Management - Indian Culture and Heritage</title>
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
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .navbar h1 {
        margin: 0;
        font-size: 24px;
    }

    .btn-back {
        padding: 10px 20px;
        background-color: #3498db;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background 0.3s;
    }

    .btn-back:hover {
        background-color: #2980b9;
    }

    .container {
        margin: 20px;
    }

    .user-management {
        background-color: rgba(255, 255, 255, 0.9);
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .user-management h2 {
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

    .user-table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    .user-table th, .user-table td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ccc;
    }

    .user-table th {
        background-color: #3498db;
        color: #fff;
    }

    .user-table tr:hover {
        background-color: #f2f2f2;
    }

    .action-buttons {
        display: flex;
        gap: 10px;
    }

    .btn-edit, .btn-delete {
        padding: 5px 10px;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background 0.3s;
    }

    .btn-edit {
        background-color: #f39c12;
    }

    .btn-delete {
        background-color: #e74c3c;
    }

    .btn-edit:hover {
        background-color: #e67e22;
    }

    .btn-delete:hover {
        background-color: #c0392b;
    }
</style>
</head>
<body>

    <div class="navbar">
        <h1>User Management - Indian Culture and Heritage</h1>
        <button class="btn-back" onclick="goBack()">Back</button>
    </div>

    <div class="container">
        <div class="user-management">
            <h2>Manage Users</h2>
            <table class="user-table">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody id="userTableBody">
                    <!-- Dynamic user rows will be added here -->
                </tbody>
            </table>
        </div>
    </div>

    <script>
        // Back button functionality
        function goBack() {
            window.history.back();
        }

        // Sample data for users (for demonstration purposes)
        const users = [
            { username: "john_doe", email: "john@example.com", role: "Cultural Enthusiast" },
            { username: "jane_smith", email: "jane@example.com", role: "Content Creator" },
            { username: "admin_user", email: "admin@example.com", role: "Admin" },
        ];

        // Function to render user table
        function renderUserTable() {
            const userTableBody = document.getElementById('userTableBody');
            userTableBody.innerHTML = ''; // Clear existing rows
            users.forEach((user, index) => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                    <td>
                        <select onchange="updateUserRole(${index}, this.value)">
                            <option value="Cultural Enthusiast" ${user.role === 'Cultural Enthusiast' ? 'selected' : ''}>Cultural Enthusiast</option>
                            <option value="Content Creator" ${user.role === 'Content Creator' ? 'selected' : ''}>Content Creator</option>
                            <option value="Tour Guide" ${user.role === 'Tour Guide' ? 'selected' : ''}>Tour Guide</option>
                            <option value="Admin" ${user.role === 'Admin' ? 'selected' : ''}>Admin</option>
                        </select>
                    </td>
                    <td>
                        <div class="action-buttons">
                            <button class="btn-edit" onclick="editUser(${index})">Edit</button>
                            <button class="btn-delete" onclick="deleteUser(${index})">Delete</button>
                        </div>
                    </td>
                `;
                userTableBody.appendChild(row);
            });
        }

        // Function to update user role
        function updateUserRole(index, newRole) {
            users[index].role = newRole;
            alert(`Role updated to "${newRole}" for user: ${users[index].username}`);
        }

        // Function to edit user
        function editUser(index) {
            const newEmail = prompt('Enter new email for ' + users[index].username + ':', users[index].email);
            if (newEmail) {
                users[index].email = newEmail;
                renderUserTable();
                alert('User email updated.');
            }
        }

        // Function to delete user
        function deleteUser(index) {
            if (confirm('Are you sure you want to delete this user?')) {
                users.splice(index, 1);
                renderUserTable();
                alert('User deleted.');
            }
        }

        // Initialize user table on page load
        renderUserTable();
    </script>

</body>
</html>