//
//  WeatherViewController.swift
//  Vizit
//
//  Created by Sandesh Basnet on 12/11/18.
//  Copyright © 2018 Vizit. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    @IBOutlet weak var temperature: UILabel!
    
    @IBOutlet weak var maxTemp: UILabel!
    
    
    @IBOutlet weak var minTemp: UILabel!
    
    
    @IBOutlet weak var humidity: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let desc = WeatherData.description["description"] as! String!
        
        self.descriptionLabel.text = "Description: \(desc! as! String!)"
        
        let weather = WeatherData.description["main"] as! [String:Any]
        
        self.temperature.text = "Temperature:  \(String(weather["temp"] as! Double))"
        
        self.minTemp.text =  "Min Temp: \(String(weather["temp_min"] as! Double))"
        
        self.maxTemp.text = "Max Temp: \(String(weather["temp_max"] as! Double))"
        
        self.humidity.text = "Humidity: \(String(weather["humidity"]as! Double))"

        // Do any additional setup after loading the view.
    }
    

}
