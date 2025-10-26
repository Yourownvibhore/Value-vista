<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>Used Car Price Prediction</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            line-height: 1.6;
            background-color: #f8f8f8;
            color: #333;
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

        .prediction-section {
            padding: 3em;
            text-align: center;
        }

        .prediction-form {
            display: flex;
            justify-content: space-between;
            max-width: 800px;
            margin: auto;
            background-color: #fff;
            border-radius: 8px;
            padding: 2em;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .column {
            flex: 1;
            padding: 0 1em;
        }

        .column label {
            display: block;
            margin: 1em 0 0.5em;
            font-size: 1.2em;
            color: #555;
        }

        .column input,
        .column select {
            width: 100%;
            padding: 1em;
            margin: 0.5em 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        .column input:focus,
        .column select:focus {
            border-color: #4CAF50;
        }

        .prediction-form button {
            width: 100%;
            padding: 1em 2em;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .prediction-form button:hover {
            background-color: #45a049;
        }

        .prediction-result {
            margin-top: 2em;
            font-size: 1.5em;
            color: #4CAF50;
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

    <div class="prediction-section">
        <h2>Car Price Prediction</h2>
        <p>Enter the details of the car to get a predicted price.</p>
        
        <form action="/predict" method="post" class="prediction-form">
            <div class="column">
                <label for="year">Year:</label>
                <input type="number" id="year" name="year" min="1900" max="2024" required>

                <label for="kilometers">Kilometers Driven:</label>
                <input type="number" id="kilometers" name="kilometers" min="0" required>

                <label for="fuelType">Fuel Type:</label>
                <select id="fuelType" name="fuelType" required>
                    <option value="Petrol">Petrol</option>
                    <option value="Diesel">Diesel</option>
                    <option value="CNG">CNG</option>
                    <option value="LPG">LPG</option>
                </select>

                <label for="transmission">Transmission:</label>
                <select id="transmission" name="transmission" required>
                    <option value="Automatic">Automatic</option>
                    <option value="Manual">Manual</option>
                </select>

                <label for="ownerType">Owner Type:</label>
                <select id="ownerType" name="ownerType" required>
                    <option value="First">First Owner</option>
                    <option value="Second">Second Owner</option>
                    <option value="Third">Third Owner</option>
                    <option value="Fourth & above">Fourth and above Owner</option>
                </select>

                <label for="mileage">Mileage (kmpl):</label>
                <input type="text" id="mileage" name="mileage" required>


            </div>

            <div class="column">

                <label for="engine">Engine (cc):</label>
                <input type="number" id="engine" name="engine" min="0" required>

                <label for="power">Power (bhp):</label>
                <input type="text" id="power" name="power" required>

                <label for="seats">Seats:</label>
                <select id="seats" name="seats" required>
                    <option value="2">2</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="7">7</option>
                    <option value="9">9</option>
                    <option value="10">> 9</option>
                </select>

                <label for="brand">Brand:</label>
                <select id="brand" name="brand" required>
                    <option value="Maruti">Maruti</option>
                    <option value="Hyundai">Hyundai</option>
                    <option value="Honda">Honda</option>
                    <option value="Audi">Audi</option>
                    <option value="Nissan">Nissan</option>
                    <option value="Toyota">Toyota</option>
                    <option value="Volkswagen">Volkswagen</option>
                    <option value="Tata">Tata</option>
                    <option value="Land">Land</option>
                    <option value="Mitsubishi">Mitsubishi</option>
                    <option value="Renault">Renault</option>
                    <option value="Mercedes-Benz">Mercedes-Benz</option>
                    <option value="BMW">BMW</option>
                    <option value="Mahindra">Mahindra</option>
                    <option value="Ford">Ford</option>
                    <option value="Porsche">Porsche</option>
                    <option value="Datsun">Datsun</option>
                    <option value="Jaguar">Jaguar</option>
                    <option value="Volvo">Volvo</option>
                    <option value="Chevrolet">Chevrolet</option>
                    <option value="Skoda">Skoda</option>
                    <option value="Mini">Mini</option>
                    <option value="Fiat">Fiat</option>
                    <option value="Jeep">Jeep</option>
                    <option value="Ambassador">Ambassador</option>
                    <option value="Isuzu">Isuzu</option>
                    <option value="ISUZU">ISUZU</option>
                    <option value="Force">Force</option>
                    <option value="Bentley">Bentley</option>
                    <option value="Lamborghini">Lamborghini</option>
                </select>

                <label for="model">Model:</label>
                <select id="model" name="model" required>
                    <option value="WagonR">WagonR</option>
                    <option value="Creta">Creta</option>
                    <option value="Jazz">Jazz</option>
                    <option value="Ertiga">Ertiga</option>
                    <option value="A4">A4</option>
                    <option value="EON">EON</option>
                    <option value="Micra">Micra</option>
                    <option value="Innova">Innova</option>
                    <option value="Vento">Vento</option>
                    <option value="Indica">Indica</option>
                    <option value="Ciaz">Ciaz</option>
                    <option value="City">City</option>
                    <option value="Swift">Swift</option>
                    <option value="Rover">Rover</option>
                    <option value="Pajero">Pajero</option>
                    <option value="Amaze">Amaze</option>
                    <option value="Duster">Duster</option>
                    <option value="New">New</option>
                    <option value="3">3</option>
                    <option value="S">S</option>
                    <option value="A6">A6</option>
                    <option value="i20">i20</option>
                    <option value="Alto">Alto</option>
                    <option value="WRV">WRV</option>
                    <option value="Corolla">Corolla</option>
                    <option value="Ssangyong">Ssangyong</option>
                    <option value="Vitara">Vitara</option>
                    <option value="KUV">KUV</option>
                    <option value="M-Class">M-Class</option>
                    <option value="Polo">Polo</option>
                    <option value="Nano">Nano</option>
                    <option value="Elantra">Elantra</option>
                    <option value="Xcent">Xcent</option>
                    <option value="Thar">Thar</option>
                    <option value="Grand">Grand</option>
                    <option value="KWID">KWID</option>
                    <option value="i10">i10</option>
                    <option value="X-Trail">X-Trail</option>
                    <option value="Zen">Zen</option>
                    <option value="Figo">Figo</option>
                    <option value="C-Class">C-Class</option>
                    <option value="Cayenne">Cayenne</option>
                    <option value="XUV500">XUV500</option>
                    <option value="Terrano">Terrano</option>
                    <option value="Brio">Brio</option>
                    <option value="Zest">Zest</option>
                    <option value="Ritz">Ritz</option>
                    <option value="5">5</option>
                    <option value="Fortuner">Fortuner</option>
                    <option value="Ecosport">Ecosport</option>
                    <option value="Verna">Verna</option>
                    <option value="GO">GO</option>
                    <option value="Omni">Omni</option>
                    <option value="Etios">Etios</option>
                    <option value="XF">XF</option>
                    <option value="Eeco">Eeco</option>
                    <option value="Civic">Civic</option>
                    <option value="V40">V40</option>
                    <option value="B">B</option>
                    <option value="Scorpio">Scorpio</option>
                    <option value="CR-V">CR-V</option>
                    <option value="SLC">SLC</option>
                    <option value="1">1</option>
                    <option value="Beat">Beat</option>
                    <option value="Rapid">Rapid</option>
                    <option value="RS5">RS5</option>
                    <option value="Superb">Superb</option>
                    <option value="X5">X5</option>
                    <option value="GLC">GLC</option>
                    <option value="Countryman">Countryman</option>
                    <option value="Fiesta">Fiesta</option>
                    <option value="Optra">Optra</option>
                    <option value="Lodgy">Lodgy</option>
                    <option value="E-Class">E-Class</option>
                    <option value="Baleno">Baleno</option>
                    <option value="Laura">Laura</option>
                    <option value="NuvoSport">NuvoSport</option>
                    <option value="Fabia">Fabia</option>
                    <option value="Indigo">Indigo</option>
                    <option value="Q3">Q3</option>
                    <option value="Octavia">Octavia</option>
                    <option value="A8">A8</option>
                    <option value="Verito">Verito</option>
                    <option value="Cooper">Cooper</option>
                    <option value="Santa">Santa</option>
                    <option value="X1">X1</option>
                    <option value="Accent">Accent</option>
                    <option value="Tucson">Tucson</option>
                    <option value="GLE">GLE</option>
                    <option value="A-Star">A-Star</option>
                    <option value="Grande">Grande</option>
                    <option value="X3">X3</option>
                    <option value="EcoSport">EcoSport</option>
                    <option value="Q7">Q7</option>
                    <option value="Jetta">Jetta</option>
                    <option value="GLA">GLA</option>
                    <option value="Celerio">Celerio</option>
                    <option value="Sumo">Sumo</option>
                    <option value="Accord">Accord</option>
                    <option value="6">6</option>
                    <option value="Manza">Manza</option>
                    <option value="Spark">Spark</option>
                    <option value="Clubman">Clubman</option>
                    <option value="Teana">Teana</option>
                    <option value="800">800</option>
                    <option value="BRV">BRV</option>
                    <option value="XE">XE</option>
                    <option value="Xenon">Xenon</option>
                    <option value="A3">A3</option>
                    <option value="GL-Class">GL-Class</option>
                    <option value="BR-V">BR-V</option>
                    <option value="S80">S80</option>
                    <option value="Captur">Captur</option>
                    <option value="Enjoy">Enjoy</option>
                    <option value="Bolero">Bolero</option>
                    <option value="Q5">Q5</option>
                    <option value="Cedia">Cedia</option>
                    <option value="S-Cross">S-Cross</option>
                    <option value="Santro">Santro</option>
                    <option value="Yeti">Yeti</option>
                    <option value="Endeavour">Endeavour</option>
                    <option value="GLS">GLS</option>
                    <option value="A">A</option>
                    <option value="SX4">SX4</option>
                    <option value="Camry">Camry</option>
                    <option value="Mobilio">Mobilio</option>
                    <option value="Linea">Linea</option>
                    <option value="TT">TT</option>
                    <option value="Renault">Renault</option>
                    <option value="Compass">Compass</option>
                    <option value="Ikon">Ikon</option>
                    <option value="Sail">Sail</option>
                    <option value="Quanto">Quanto</option>
                    <option value="Aveo">Aveo</option>
                    <option value="Xylo">Xylo</option>
                    <option value="Esteem">Esteem</option>
                    <option value="Safari">Safari</option>
                    <option value="Ignis">Ignis</option>
                    <option value="XJ">XJ</option>
                    <option value="Sunny">Sunny</option>
                    <option value="SLK-Class">SLK-Class</option>
                    <option value="Passat">Passat</option>
                    <option value="Dzire">Dzire</option>
                    <option value="Cruze">Cruze</option>
                    <option value="Koleos">Koleos</option>
                    <option value="Qualis">Qualis</option>
                    <option value="Ameo">Ameo</option>
                    <option value="redi-GO">redi-GO</option>
                    <option value="Outlander">Outlander</option>
                    <option value="CLA">CLA</option>
                    <option value="XC60">XC60</option>
                    <option value="Boxster">Boxster</option>
                    <option value="XUV300">XUV300</option>
                    <option value="Hexa">Hexa</option>
                    <option value="Tiago">Tiago</option>
                    <option value="7">7</option>
                    <option value="Avventura">Avventura</option>
                    <option value="Tigor">Tigor</option>
                    <option value="S60">S60</option>
                    <option value="Classic">Classic</option>
                    <option value="Beetle">Beetle</option>
                    <option value="Getz">Getz</option>
                    <option value="A7">A7</option>
                    <option value="Elite">Elite</option>
                    <option value="Aspire">Aspire</option>
                    <option value="Tiguan">Tiguan</option>
                    <option value="Captiva">Captiva</option>
                    <option value="Punto">Punto</option>
                    <option value="TUV">TUV</option>
                    <option value="X6">X6</option>
                    <option value="Bolt">Bolt</option>
                    <option value="Evalia">Evalia</option>
                    <option value="Scala">Scala</option>
                    <option value="Sonata">Sonata</option>
                    <option value="Freestyle">Freestyle</option>
                    <option value="Logan">Logan</option>
                    <option value="Tavera">Tavera</option>
                    <option value="XC90">XC90</option>
                    <option value="Pulse">Pulse</option>
                    <option value="Montero">Montero</option>
                    <option value="Panamera">Panamera</option>
                    <option value="CrossPolo">CrossPolo</option>
                    <option value="Fluence">Fluence</option>
                    <option value="Venture">Venture</option>
                    <option value="Nexon">Nexon</option>
                    <option value="MUX">MUX</option>
                    <option value="Platinum">Platinum</option>
                    <option value="R-Class">R-Class</option>
                    <option value="CLS-Class">CLS-Class</option>
                    <option value="D-MAX">D-MAX</option>
                    <option value="S-Class">S-Class</option>
                    <option value="Lancer">Lancer</option>
                    <option value="Redi">Redi</option>
                    <option value="Mustang">Mustang</option>
                    <option value="Fusion">Fusion</option>
                    <option value="SL-Class">SL-Class</option>
                    <option value="Z4">Z4</option>
                    <option value="One">One</option>
                    <option value="Versa">Versa</option>
                    <option value="WR-V">WR-V</option>
                    <option value="Continental">Continental</option>
                    <option value="Gallardo">Gallardo</option>
                    <option value="F">F</option>
                </select>
                

                <label for="region">Region:</label>
                <select id="region" name="region" required>
                    <option value="North">North</option>
                    <option value="South">South</option>
                    <option value="East">East</option>
                    <option value="West">West</option>
                </select>
            <br><br><br>

                <button type="submit">Get Prediction</button>
            </div>
        </form>

        <div class="prediction-result">
            <h2>
                The predicted price is: ₹<span id="prediction">${results} Lakhs</span>                
             </h2>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Used Car Price Prediction. All rights reserved.</p>
    </footer>
</body>
</html>