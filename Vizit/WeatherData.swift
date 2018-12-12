//
//  WeatherData.swift
//  Vizit
//
//  Created by Sandesh Basnet on 12/11/18.
//  Copyright © 2018 Vizit. All rights reserved.
//

import Foundation

class WeatherData {
    
    static var description: [String:Any] =  [:]
    
    init() {
        
    }
    
    static func fetchData(_ city: String!, _ state: String!) {
        
        let url = URL(string: "https://vizitus.herokuapp.com/weather")!
        
        var request = URLRequest(url:url, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 10)
        request.httpMethod = "POST"
        let postString = "city=\(city!)&state=\(state!)"
        request.httpBody = postString.data(using: .utf8)
        
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        
        let task = session.dataTask(with: request) {
            
            (data, response, error) in
            
            if let error = error {
                
                print(error.localizedDescription)
            }
            
            if let data = data {
                
               WeatherData.description  = try! JSONSerialization.jsonObject(with: data, options: []) as! [String:Any]
                
                
            }
            
            
        }
        
        task.resume()
    }
    
        
    }

