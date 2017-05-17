//
//  CurrentWeather.swift
//  RainyShinyCloudy
//
//  Created by Chihkao Yu on 5/9/17.
//  Copyright © 2017 Chihkao Yu. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    
    
    //create data encapsulation (hiding) using setter and getter
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        //set current date and time
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    
    //use AlamoFire to retrieve weather details from OpenWeatherMap @escaping closure
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        //AlamoFire download
        Alamofire.request(CURRENT_WEATHER_URL).responseJSON { response in
            let result = response.result
            
            //define dictonary for JSON data pulled from OpenWeatherMap
            if let dict = result.value as? Dictionary<String, Any> {
                
                if let city = dict["name"] as? String {
                    self._cityName = city.capitalized
                }

                if let weather = dict["weather"] as? [Dictionary<String, Any>] {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                    }
                } //pull weather type from dictonary weather and array of dictionaires "weather"
 
                if let main = dict["main"] as? Dictionary<String, Any> {
                    if let currentTemperature = main["temp"] as? Double {
                        let kelvinToFarenheitPreDivision = (currentTemperature * (9/5) - 459.67)
                        let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                        self._currentTemp = kelvinToFarenheit
                    }
                } //pull temp field from main
            }
            //moved up into response code section to make sure data is retrieved from the web before escaping
            completed()
        }
    }
}

