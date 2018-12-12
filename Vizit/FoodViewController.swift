//
//  FoodViewController.swift
//  Vizit
//
//  Created by Sandesh Basnet on 12/11/18.
//  Copyright © 2018 Vizit. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    

    
    @IBOutlet weak var tableView: UITableView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.rowHeight = 150

       
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       return  FoodData.results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell") as! FoodCell
        
        let food = FoodData.results[indexPath.row]
        let name = food["name"] as! String
        let rating = food["rating"] as! Double
        let price =  food["price"] as! String
        let location = food["location"] as! [String:Any]
        let address = location["address1"] as! String
        
        cell.businessName.text = name
        cell.businessRating.text = String(rating)
        cell.businessPrice.text = price
        cell.businessLocation.text = address
        let url = URL(string:food["image_url"] as! String)!
        
        cell.foodImage.af_setImage(withURL: url)
        
        
        return cell
        
    }
    

   

}
