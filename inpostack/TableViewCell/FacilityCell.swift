//
//  FacilityCell.swift
//  inpostack
//
//  Created by Kwon Hyuk Cheol on 2018. 4. 22..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class FacilityCell: UITableViewCell {

    @IBOutlet weak var facname: UILabel!
    @IBOutlet weak var facloca: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
