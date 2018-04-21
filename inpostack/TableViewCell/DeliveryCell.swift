//
//  DeliveryCell.swift
//  inpostack
//
//  Created by Kwon Hyuk Cheol on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class DeliveryCell: UITableViewCell {

    @IBOutlet weak var resname: UILabel!
    @IBOutlet weak var resnum: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
