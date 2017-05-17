//
//  WeatherCell.swift
//  RainyShinyCloudy
//
//  Created by Chihkao Yu on 5/17/17.
//  Copyright © 2017 Chihkao Yu. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    func configureCell(forecast: Forecast) {
        lowTemp.text = "\(forecast.lowTemp)"
        highTemp.text = "\(forecast.highTemp)"
        weatherType.text = forecast.weatherTpe
        dayLabel.text = forecast.date
        weatherIcon.image = UIImage(named: forecast._weatherType)
    }
}
