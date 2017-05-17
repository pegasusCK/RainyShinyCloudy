//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Chihkao Yu on 5/9/17.
//  Copyright © 2017 Chihkao Yu. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "b65352249dce961d91a09c2dc56be221"

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=b65352249dce961d91a09c2dc56be221"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=b65352249dce961d91a09c2dc56be221"

typealias DownloadComplete = () -> ()
