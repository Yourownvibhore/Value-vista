package com.example.usedcar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.example.usedcar.model.CarInput;
import com.example.usedcar.model.PredictionResponse;
@Controller
public class MainController {
	
	@Autowired
	public RestTemplate restTemplate;
	
	private final String FLASK_API_URL = "http://127.0.0.1:5000/predict";
	
	@RequestMapping("/")
	public String home() {
		System.out.println("cwbj");
		return "home";
	}
	
	
	@RequestMapping("/about")
	public String about() {
		System.out.println("cwbj");
		return "about_us";
	}
	
	@RequestMapping("/blog")
	public String blog() {
		System.out.println("cwbj");
		return "blog";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		System.out.println("cwbj");
		return "contact";
	}
	
	@RequestMapping("/prediction")
	public String prediction() {
		System.out.println("error occured");
		return "prediction";
	}
	
	@PostMapping("/predict")
	public String predict(@ModelAttribute CarInput carInput, Model model) 
	{
	    try {
	        PredictionResponse response = restTemplate.postForObject(
	            FLASK_API_URL, carInput, PredictionResponse.class
	        );

	        double predictedPrice = response.getPrediction();
	        model.addAttribute("results", predictedPrice);
	    } catch (Exception e) {
	        e.printStackTrace();
	        model.addAttribute("results", "Error! Could not get prediction.");
	    }

	    return "prediction";
	}
	

}
