from flask import Flask, request, jsonify
import pandas as pd
import sys
import pickle

app = Flask(__name__)

# Utility to load objects
def load_object(file_path):
    with open(file_path, "rb") as f:
        return pickle.load(f)

# CustomData class
class CustomData:
    def __init__(self, year, kilometers, fuelType, transmission, Owner_Type, Mileage, Engine, Power, Seats, Brand, Model, region):
        self.year = year
        self.kilometers = kilometers
        self.fuelType = fuelType
        self.transmission = transmission
        self.Owner_Type = Owner_Type
        self.Mileage = Mileage
        self.Engine = Engine
        self.Power = Power
        self.Seats = Seats
        self.Brand = Brand
        self.Model = Model
        self.region = region

    def get_data_as_data_frame(self):
        try:
            data_dict = {
                "Year": [self.year],
                "Kilometers_Driven": [self.kilometers],
                "Fuel_Type": [self.fuelType],
                "Transmission": [self.transmission],
                "Owner_Type": [self.Owner_Type],
                "Mileage(kmpl)": [self.Mileage],
                "Engine(cc)": [self.Engine],
                "Power(bhp)": [self.Power],
                "Seats": [self.Seats],
                "Brand": [self.Brand],
                "Model": [self.Model],
                "Region": [self.region],
            }
            return pd.DataFrame(data_dict)
        except Exception as e:
            raise Exception(f"Error creating DataFrame: {e}")

# Prediction pipeline
class PredictPipeline:
    def __init__(self):
        self.preprocessor_path = "artifact/preprocessor.pkl"
        self.model_path = "artifact/model.pkl"
        self.preprocessor = load_object(self.preprocessor_path)
        self.model = load_object(self.model_path)

    def predict(self, features: pd.DataFrame):
        try:
            data_scaled = self.preprocessor.transform(features)
            prediction = self.model.predict(data_scaled)
            return prediction
        except Exception as e:
            raise Exception(f"Error during prediction: {e}")

# Flask route
@app.route("/predict", methods=["POST"])
def predict():
    try:
        data = request.json
        custom_data = CustomData(
            year=int(data["year"]),
            kilometers=int(data["kilometers"]),
            fuelType=data["fuelType"],
            transmission=data["transmission"],
            Owner_Type=data["ownerType"],
            Mileage=float(data["mileage"]),
            Engine=int(data["engine"]),
            Power=float(data["power"]),
            Seats=int(data["seats"]),
            Brand=data["brand"],
            Model=data["model"],
            region=data["region"]
        )
        df = custom_data.get_data_as_data_frame()
        pipeline = PredictPipeline()
        result = pipeline.predict(df)
        return jsonify({"predicted_price": float(result[0])})
    except Exception as e:
        return jsonify({"error": str(e)})

if __name__ == "__main__":
    app.run(debug=True)
