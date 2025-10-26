<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <title>Used Car Price Prediction</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
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

        .hero {
            text-align: center;
            padding: 3em;
            background-image: url('https://img.freepik.com/free-photo/sports-car-driving-asphalt-road-night-generative-ai_188544-8052.jpg?w=826&t=st=1704307070~exp=1704307670~hmac=2c25d3d7346a6ddaf2e3683434a6b5a250fc0d7df66a8fb94e1e3c8e764b2760'); /* Replace with a relevant image */
            background-size: cover;
            color: white;
        }

        .hero h2 {
            font-size: 2.5em;
            margin-bottom: 0.5em;
        }

        .search-bar {
            padding: 2em;
            text-align: center;
        }

        input[type="text"] {
            padding: 0.5em;
            width: 70%;
            border: none;
            border-radius: 4px;
        }

        button {
            padding: 0.7em 2em;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        .predictions {
            text-align: center;
            padding: 3em;
            background-color: #f2f2f2;
        }

        .prediction-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 1.5em;
            margin: 1.5em;
            display: inline-block;
            text-align: left;
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

    <div class="hero">
        <h2>Unlock the Future of Used Car Prices</h2>
        <p>Difficulty in determining your old car price?</p><p> Don't worry we are here to determine the price for your old car accurately.</p>
        <div class="search-bar">

            <input type="text" placeholder="Enter car details...">
            <br><br><br>
            <form action="/prediction">
                <button type="submit">Get Prediction</button>
              </form>
            <!-- <button >Get Prediction</button> -->
        </div>
    </div>

    <div class="predictions">
        <h2>Latest Predictions</h2>
        <div class="prediction-card"> <!-- Repeat for multiple cards -->
            <h3>Range-Rover</h3>
            <p>Predicted Price: ₹83,00,000</p>
            <!-- Add a visual graph here -->
        </div>
        <div class="prediction-card"> <!-- Repeat for multiple cards -->
            <h3>Mustang</h3>
            <p>Predicted Price: ₹70,00,000</p>
            <!-- Add a visual graph here -->
        </div>
        <div class="prediction-card"> <!-- Repeat for multiple cards -->
            <h3>Audi A4</h3>
            <p>Predicted Price: ₹20,00,000</p>
            <!-- Add a visual graph here -->
        </div>
        <div class="prediction-card"> <!-- Repeat for multiple cards -->
            <h3>BMW X1</h3>
            <p>Predicted Price: ₹35,00,000</p>
            <!-- Add a visual graph here -->
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Used Car Price Prediction. All rights reserved.</p>
    </footer>

</body>
</html>