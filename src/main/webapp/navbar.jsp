<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar with Footer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <header class="bg-danger">
        <nav class="navbar navbar-expand-lg navbar-dark container">
            <a class="navbar-brand" href="/home">Incredible India</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link text-light" href="#home">Home</a>
                    </li>
                    <!-- Profile Icon for redirection -->
                    <li class="nav-item">
                        <a class="nav-link text-light" href="/profile.html">
                            <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Profile Icon" width="24" height="24">
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- Page Content -->
    <main>
        <!-- Your content goes here -->
    </main>

    <!-- Footer -->
    

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"></script>
</body>
</html>
