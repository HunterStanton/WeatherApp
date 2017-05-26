//
//  Weather.swift
//  WeatherLookupApp
//
//  Created by Hunter Stanton on 5/26/17.
//  Copyright © 2017 Hunter Stanton. All rights reserved.
//
//  Stores information about the current weather conditions for a specified area.
//

import Foundation


/// Information about the current weather conditions for a specified location
class Weather
{
    
    /// Information about temperature variables
    class Temperature
    {
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
        
        /// The direction the wind is blowing, in meteorological degrees
        var degrees: Float?
        
        /// The current speed the wind is blowing, in Meters per second
        var speed: Float?
        
    }
    
    /// The current barometric pressure, in hectopascals
    var pressure: Float?
    
    /// The current humidity
    var humidity: Float?
    
    /// The visibility, in meters
    var visibility: Int?
}
