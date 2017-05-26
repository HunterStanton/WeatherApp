//
//  WeatherLookup.swift
//  WeatherLookupApp
//
//  Created by Hunter Stanton on 5/26/17.
//  Copyright © 2017 Hunter Stanton. All rights reserved.
//
//  The class that handles getting the weather from the internet and parsing it.
//

import Foundation
import SwiftyJSON

class WeatherLookup
{
    
    
    /// Gets the weather and returns it in a 'Weather' object.
    ///
    /// - Parameter location: The name of the location to lookup and get the weather conditions from.
    /// - Returns: The current weather conditions, formatted in the form of a 'Weather' object.
    class func GetWeather(location: String) -> Weather
    {
        return Weather()
    }
    
}
