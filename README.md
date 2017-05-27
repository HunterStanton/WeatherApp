# WeatherApp
An app which accesses the OpenWeatherMap API and downloads weather information. Just enter your location, press "Lookup", and watch as the weather information automatically gets put into a table

## Tech
This app was built using:
* CocoaPods
* SwiftyJSON (https://github.com/SwiftyJSON/SwiftyJSON)
* Storyboards
* URLSession for downloading JSON from an API
* OpenWeatherMap API (http://openweathermap.org)
* GCD (Grand Central Dispatch) to separate the UI thread from tasks such as networking
* UITableView for displaying weather info

## Features
This app has a few different features. Here is a quick list
* Lookup of weather using the accurate, always updated OpenWeatherMap API
* Weather condition icon that changes depending on the weather conditions
* Support for every device class and size, including multi-tasking sizes on iPad and iPad Pro
* Prompts to let the user know when they are doing something incorrectly
* Stable, clean code that is well-documented, easy to modify
* Error handling so if something goes wrong, it does not bring the app down with it
