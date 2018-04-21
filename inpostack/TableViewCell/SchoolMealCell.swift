//
//  SchoolMealCell.swift
//  inpostack
//
//  Created by Kwon Hyuk Cheol on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class SchoolMealCell: UITableViewCell {
    
    @IBOutlet weak var mealImage: UIImageView!
    @IBOutlet weak var whenmeal: UILabel!
    @IBOutlet weak var mealmenu: UILabel!
    @IBOutlet weak var mealcalory: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
