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
    class func GetWeather(location: String, completion: @escaping (Weather) -> Void)
    {
        
        // Create an empty Weather object
        var weather = Weather()
        
        // OpenWeatherMap.org get weather lookup with API key
        if let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=London&APPID=f45d586989f82d913c7b056bbfcb3aab")
        {
            // Create a URLSession config and set it so that it times out after 5 seconds
            let configuration = URLSessionConfiguration.default
            configuration.timeoutIntervalForRequest = TimeInterval(5)
            configuration.timeoutIntervalForResource = TimeInterval(5)
            
            // Create a new URLSession with our configuration
            let session = URLSession(configuration: configuration)
            
            // Do our data-task
            session.dataTask(with: url as URL, completionHandler: { (data, response, error) in
                if let error = error
                {
                    
                    // If any error happens, log it
                    print("An error has occurred: \(error.localizedDescription)")
                    
                }
                else
                {
                    if let data = data
                    {
                        
                        // Create a new JSON object from the downloaded data
                        let json = JSON(data: data)
                        
                        // TODO: - Write a better way to populate this object
                        
                        // Get lat/long, country code, and city name
                        weather.loc?.lat = json["coord"]["lat"].floatValue
                        weather.loc?.long = json["coord"]["lon"].floatValue
                        weather.loc?.city = json["name"].stringValue
                        weather.loc?.countryCode = json["sys"]["country"].stringValue
                        
                        // Get current temperature and high/low temperature and convert kelvin to fahrenheit automatically
                        weather.temp?.currentTemp = TemperatureUnits.KelvinToFahrenheit(input: json["main"]["temp"].floatValue)
                        weather.temp?.high = TemperatureUnits.KelvinToFahrenheit(input: json["main"]["temp_max"].floatValue)
                        weather.temp?.low = TemperatureUnits.KelvinToFahrenheit(input: json["main"]["temp_min"].floatValue)
                        
                        // Get humidity and pressure
                        weather.humidity = json["main"]["humidity"].floatValue
                        weather.pressure = json["main"]["pressure"].floatValue
                        
                        // Get wind speed and degrees
                        weather.wind?.speed = json["wind"]["speed"].floatValue
                        weather.wind?.degrees = json["wind"]["deg"].floatValue
                        
                        completion(weather)
                        
                    }
                    else
                    {
                        
                        print("No data was downloaded.")
                        
                    }
                }
            }).resume()
        }

        
        return
        
    }
    
}
