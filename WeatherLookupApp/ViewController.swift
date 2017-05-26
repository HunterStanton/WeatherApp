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
    
    
    /// The view that shows the icon of the current weather conditions.
    @IBOutlet weak var WeatherIconView: UIImageView!
    
    /// The tableview that shows information about the current weather conditions.
    @IBOutlet weak var WeatherConditionsView: UITableView!
    
    /// A label that helps the user determine what the input field below is for.
    @IBOutlet weak var LocationNameLabel: UILabel!
    
    /// The text field that the user will input the locationt to lookup into.
    @IBOutlet weak var LocationTextField: UITextField!
    
    /// The button that initiates the weather conditions lookup on press.
    @IBOutlet weak var LookupButton: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup rounded corners on WeatherConditionsView
        WeatherConditionsView.layer.cornerRadius = 5.0
        WeatherConditionsView.layer.borderColor = UIColor.blue.cgColor
        WeatherConditionsView.layer.borderWidth = 2.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

