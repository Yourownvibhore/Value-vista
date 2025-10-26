<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Contact Us - Used Car Price Prediction</title>
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

        .contact-section {
            padding: 3em;
            text-align: center;
        }

        .contact-form {
            max-width: 600px;
            margin: auto;
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 1em;
            margin: 1em 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .contact-form button {
            padding: 1em 2em;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .contact-form button:hover {
            background-color: #45a049;
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

    <div class="contact-section">
        <h2>Contact Us</h2>
        <p>We'd love to hear from you! Send us a message using the form below or contact us directly at vjmj4005@gmail.com</p>
        
        <div class="contact-form">
            <form action="mailto:vjmj4005@gmail.com" method="post">
                <input type="text" name="name" placeholder="Your Name">
                <input type="email" name="email" placeholder="Your Email">
                <textarea name="message" placeholder="Your Message"></textarea>
                <button type="submit" value="Send">Send Message</button>
            </form>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Used Car Price Prediction. All rights reserved.</p>
    </footer>

</body>
</html>