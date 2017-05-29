//
//  ViewController.swift
//  WeatherLookupApp
//
//  Created by Hunter Stanton on 5/26/17.
//  Copyright © 2017 Hunter Stanton. All rights reserved.
//
//  The main view controller for the weather app.
//

import UIKit


/// The main view controller for the weather app.
class WeatherViewController: UIViewController {
    
    // MARK: - IBOutlet declarations
    
    /// The view that shows the icon of the current weather conditions.
    @IBOutlet weak var WeatherIconView: UIImageView!
    
    /// The tableview that shows information about the current weather conditions.
    @IBOutlet weak var WeatherConditionsView: UIScrollView!
    
    /// A label that helps the user determine what the input field below is for.
    @IBOutlet weak var LocationNameLabel: UILabel!
    
    /// The text field that the user will input the location to lookup into.
    @IBOutlet weak var LocationTextField: UITextField!
    
    /// The button that initiates the weather conditions lookup on press.
    @IBOutlet weak var LookupButton: UIButton!
    
    
    // MARK: - View state functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup rounded corners on WeatherConditionsView by modifying the CALayer of the view
        WeatherConditionsView.layer.cornerRadius = 5.0
        WeatherConditionsView.layer.borderColor = UIColor.blue.cgColor
        WeatherConditionsView.layer.borderWidth = 2.0
        
        LocationTextField.layer.cornerRadius = 5.0
        LocationTextField.layer.borderColor = UIColor.blue.cgColor
        LocationTextField.layer.borderWidth = 2.0
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - IBOutlet actions
    
    @IBAction func LookupPressed(_ sender: Any) {
        guard let text = LocationTextField.text else
        {
            print("Error unwrapping location name!")
            return
        }
        
        if (text.isEmpty)
        {
            print("User did not enter a location.")
            
            // Create an alert view with an error so the user knows to enter a location.
            AlertHelper.ShowError(view: self, description: "Please enter a location!")
            return
        }
        
        
    }
    
    // MARK: - Touch related functions
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Dismiss the keyboard when anywhere but the keyboard is touched, so that the user can dismiss the keyboard on all devices
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    // MARK: - Table view functions
    
    /// Populates the tableview with weather information
    func PopulateTableWithWeatherInfo()
    {
        
    }


}

