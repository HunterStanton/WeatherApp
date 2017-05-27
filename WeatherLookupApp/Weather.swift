//
//  Weather.swift
//  WeatherLookupApp
//
//  Created by Hunter Stanton on 5/26/17.
//  Copyright © 2017 Hunter Stanton. All rights reserved.
//
//  Stores information about the current weather conditions for a specified area.
//

/// Information about the current weather conditions for a specified location
class Weather
{
    
    init()
    {
        temp = Temperature()
        
        loc = Location()
        
        wind = Wind()
        
        pressure = 0.0
        
        humidity = 0.0
        
        visibility = 0
    }
    
    /// Information about temperature variables
    class Temperature
    {
        
        init()
        {
            high = 0.0
            
            low = 0.0
            
            currentTemp = 0.0
        }
        
        /// The forecasted highest possible temperature, in Kelvin
        var high: Float?
        
        /// The forecasted lowest possible temperature, in Kelvin
        var low: Float?
        
        /// The current temperature, in Kelvin
        var currentTemp: Float?
    }
    
    /// Information about the location of the weather conditions
    class Location
    {
        init()
        {
            city = ""
            
            lat = 0.0
            
            long = 0.0
            
            countryCode = ""
            
            id = 0
        }
        
        /// The name of the city
        var city: String?
        
        /// The latitude of the location
        var lat: Float?
        
        /// The longitude of the location
        var long: Float?
        
        /// The country code of the location (ie US, GB, JP)
        var countryCode: String?
        
        /// The OpenWeatherMap ID for the location
        var id: Int?
    }
    
    /// Information about the current wind conditions
    class Wind
    {
        
        init()
        {
            degrees = 0.0
            
            speed = 0.0
        }
        
        /// The direction the wind is blowing, in meteorological degrees
        var degrees: Float?
        
        /// The current speed the wind is blowing, in Meters per second
        var speed: Float?
        
    }
    
    
    /// Temperature information, in kelvin.
    var temp: Temperature?
    
    /// Location information.
    var loc: Location?
    
    /// Wind information.
    var wind: Wind?
    
    /// The current barometric pressure, in hectopascals
    var pressure: Float?
    
    /// The current humidity
    var humidity: Float?
    
    /// The visibility, in meters
    var visibility: Int?
}
