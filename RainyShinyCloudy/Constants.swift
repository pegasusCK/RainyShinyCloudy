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

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(API_KEY)"
let FORECAST_URL = "http://samples.openweathermap.org/data/2.5/forecast/daily?lat=-36&lon=123&cnt=10&appid=b1b15e88fa797225412429c1c50c122a1"

typealias DownloadComplete = () -> ()
