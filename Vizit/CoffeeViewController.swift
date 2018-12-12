//
//  CoffeeViewController.swift
//  Vizit
//
//  Created by Sandesh Basnet on 12/11/18.
//  Copyright © 2018 Vizit. All rights reserved.
//

import UIKit
import AlamofireImage

class CoffeeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 150
      
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return CoffeeData.results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "coffeeCell") as! CoffeeCell
        
        let coffee = CoffeeData.results[indexPath.row]
        let name = coffee["name"] as! String
        let rating = coffee["rating"] as! Double
        let price = coffee["price"] as! String
        let location = coffee["location"] as! [String:Any]
        let address = location["address1"] as! String
        
        cell.businessName.text = name
        cell.businessRating.text = String(rating)
        cell.businessPrice.text = price
        cell.businessLocation.text = address
        let url = URL(string:coffee["image_url"] as! String)!
        
        print(url)
        cell.coffeeImage.af_setImage(withURL: url)
        
        return cell
        
        
    }
    
    
    
     
}
