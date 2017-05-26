//
//  TemperatureUnits.swift
//  WeatherLookupApp
//
//  Created by Hunter Stanton on 5/26/17.
//  Copyright © 2017 Hunter Stanton. All rights reserved.
//
//  Handles converting between kelvin and fahrenheit.
//

import Foundation


/// A helper class that handles converting between kelvin and fahrenheit.
class TemperatureUnits
{
    /// Converts kelvin to fahrenheit and returns the value as a floating point number.
    ///
    /// - Parameter input: The kelvin temperature to convert to fahrenheit.
    /// - Returns: The kelvin temperature converted to fahrenheit.
    static func KelvinToFahrenheit(input: Float) -> Float
    {
        return ((9/5 * (input - 273)) + 32)
    }
    
    /// Converts fahrenheit to kelvin and returns the value as a floating point number.
    ///
    /// - Parameter input: The fahrenheit temperature to convert to kelvin.
    /// - Returns: The fahrenheit temperature converted to kelvin.
    static func FahrenheitToKelvin(input: Float) -> Float
    {
        return ((input + 459.67) * (5/9))
    }
}
