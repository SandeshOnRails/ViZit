//
//  PlacesCell.swift
//  Vizit
//
//  Created by Divyaraj Bakrola on 12/12/18.
//  Copyright © 2018 Vizit. All rights reserved.
//

import UIKit

class PlacesCell: UITableViewCell {
    
    
    @IBOutlet weak var placesImage: UIImageView!
    
    
    @IBOutlet weak var businessName: UILabel!
    
    
    
    @IBOutlet weak var businessRating: UILabel!
    
    @IBOutlet weak var businessLocation: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
