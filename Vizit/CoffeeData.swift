//
//  CoffeeData.swift
//  Vizit
//
//  Created by Sandesh Basnet on 12/10/18.
//  Copyright © 2018 Vizit. All rights reserved.
//

import Foundation

class CoffeeData {
    
     var results:[[String:Any]] = []
    
    init() {
        
    }
    
    func fetchData(_ city: String!, _ state: String!) {
        
        let url = URL(string: "https://vizitus.herokuapp.com/coffee")!
        
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
                
                self.results = try! JSONSerialization.jsonObject(with: data, options: []) as! [[String:String]]
                
                print(self.results)
            }
            
            
        }
        
        task.resume()
    }
}
