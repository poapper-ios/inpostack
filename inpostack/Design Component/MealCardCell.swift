//
//  MealCardCell.swift
//  inpostack
//
//  Created by 유정우 on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class MealCardCell: UICollectionViewCell {
    
    var mealType:String?
    var menus:String = ""
    var calory:Int?
    
    func setupCell(meal: SchoolMeal?) {
        layer.cornerRadius = 5.0
        layer.masksToBounds = true
        
        if(meal != nil) {
            mealType = meal!.Name_KO
            calory = meal!.Calory
            menus = meal!.Menu_KO.componentsJoined(by: ", ")
        }
    }
    
    func setBGImage(img:UIImage) {
        let bg = UIView()
        bg.backgroundColor = UIColor(patternImage: img)
        backgroundView = bg
    }
    
}
