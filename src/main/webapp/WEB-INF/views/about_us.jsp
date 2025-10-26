<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <title>About Us - Used Car Price Prediction</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            line-height: 1.6;
        }

        header {
            background-color: #333;
            color: white;
            padding: 1em;
            text-align: center;
        }

        nav {
            background-color: #444;
            padding: 1em;
            text-align: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 1em;
        }

        .about-section {
            padding: 3em;
            text-align: center;
        }

        .about-section h2 {
            font-size: 2.5em;
            margin-bottom: 0.5em;
        }

        .about-section p {
            font-size: 1.2em;
            color: #555;
            max-width: 800px;
            margin: auto;
        }

        .team-section {
            padding: 3em;
            text-align: center;
            background-color: #f2f2f2;
        }

        .team-member {
            display: inline-block;
            margin: 1em;
        }

        .team-member img {
            border-radius: 50%;
            max-width: 100px;
            border: 2px solid #555;
        }

        footer {
            background-color: #333;
            color: white;
            padding: 1em;
            text-align: center;
        }
    </style>
</head>
<body>

    <header>
        <h1>Used Car Price Prediction</h1>
    </header>

    <nav>
        <a href="/">Home</a>
        <a href="/prediction">Predictions</a>
        <a href="/about">About Us</a>
        <a href="/blog">Blog</a>
        <a href="/contact">Contact</a>
    </nav>

    <div class="about-section">
        <h2>About Us</h2>
        <p>This project is a personal endeavor, driven by the desire to explore and apply machine learning techniques to real-world scenarios. Our primary goal is to advance our understanding of predictive analytics and contribute to the ever-evolving field of artificial intelligence.</p>
            
        <p>Happy exploring!</p>
            
        <p>~Vibhore Jain</p>
    </div>

    <div class="team-section">
        <h2>Meet Our Team</h2>
        <div class="team-member">
            <img src="data:image/jpeg;base64,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" alt="Team Member 1">
            <p>Me</p>
            <p>Co-Founder & CEO</p>
        </div>
        <div class="team-member">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRimlzD9CdVy-IIljqp00P0fIRPzTwZ-ZtJexm2aD5SIUPDbNgXX8w7xctJ9l62GR_x8wM&usqp=CAU" alt="Team Member 2">
            <p>Only Me</p>
            <p>Co-Founder & CTO</p>
        </div>
        <!-- Add more team members as needed -->
    </div>

    <footer>
        <p>&copy; 2024 Used Car Price Prediction. All rights reserved.</p>
    </footer>

</body>
</html>