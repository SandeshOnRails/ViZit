//
//  BarController.swift
//  Vizit
//
//  Created by Sandesh Basnet on 12/11/18.
//  Copyright © 2018 Vizit. All rights reserved.
//

import UIKit

class BarController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.rowHeight = 150
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print(BarData.results.count)
        return BarData.results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "barCell") as! BarCell
        
        let bar = BarData.results[indexPath.row]
        let name = bar["name"] as! String
        let rating = bar["rating"] as! Double
        let price = bar["price"] as! String
        let location = bar["location"] as! [String:Any]
        let address = location["address1"] as! String
        
        cell.businessName.text = name
        cell.businessRating.text = String(rating)
        cell.businessPrice.text = price
        cell.businessLocation.text = address
        let url = URL(string:bar["image_url"] as! String)!
        cell.coffeeImage.af_setImage(withURL: url)
        
        return cell
        
    }
    
    
    
}
