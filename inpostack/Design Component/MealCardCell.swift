//
//  MealCardCell.swift
//  inpostack
//
//  Created by 유정우 on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class MealCardCell: UICollectionViewCell {
    
    var meal:SchoolMeal?
    
    func setupCell() {
        layer.cornerRadius = 10.0
        layer.masksToBounds = true
        
    }
    
}
