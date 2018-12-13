//
//  PlacesViewController.swift
//  Vizit
//
//  Created by Divyaraj Bakrola on 12/11/18.
//  Copyright © 2018 Vizit. All rights reserved.
//

import UIKit

class PlacesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 150
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return PlacesData.results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "placesCell") as! PlacesCell
        
        let place = PlacesData.results[indexPath.row]
        
        
        
        cell.businessName.text = "Name: \(place["name"] as! String)"
        cell.businessLocation.text = "Location: \(place["formatted_address"] as! String)"
        cell.businessRating.text = "Rating: \(String(place["rating"] as! Double))"
        
        let url = URL(string:place["icon"] as! String)!
        cell.placesImage.af_setImage(withURL: url)
        cell.backgroundColor = UIColor.lightGray

        
        return cell
        
    }

   

}
