//
//  SchoolMeal.swift
//  inpostack
//
//  Created by 조승혁 on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class SchoolMeal {
    var Id : Int!
    var Menu_KO : NSArray!
    var Menu_EN : NSArray!
    var Date : String!
    var Name_KO : String!
    var Name_EN : String!
    var Price : Int!
    var Calory : Int!
    
    init(input : [String:AnyObject]!){
        Id = input[Constants.Schoolmeal.id] as! Int
        Menu_KO = input[Constants.Schoolmeal.menu_ko] as! NSArray
        Menu_EN = input[Constants.Schoolmeal.menu_en] as! NSArray
        Date = input[Constants.Schoolmeal.date] as! String
        Name_KO = input[Constants.Schoolmeal.name_ko] as! String
        Name_EN = input[Constants.Schoolmeal.name_en] as! String
        Price = input[Constants.Schoolmeal.price] as! Int
        Calory = input[Constants.Schoolmeal.calory] as! Int
    }
}
