//
//  CarCell.swift
//  GarageApp
//
//  Created by james luo on 11/7/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import UIKit

class CarCell: UITableViewCell {
    @IBOutlet weak var CarName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
