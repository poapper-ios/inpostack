//
//  Facility.swift
//  inpostack
//
//  Created by 조승혁 on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class Facility {
    var Id : Int!
    var Name : String!
    var Description : String!
    var WorkdayOpen : String!
    var SaturdayOpen : String!
    var SundayOpen : String!
    var Saturday : Bool!
    var Sunday : Bool!
    var Image : String!
    var Location : String!
    var Contact : String!
    
    init(input : [String:AnyObject]!){
        Id = input[Constants.Schoolmeal.id] as! Int
        Name = input[Constants.Facility.name] as! String
        Description = input[Constants.Facility.description] as! String
        WorkdayOpen = input[Constants.Facility.workday_open] as! String
        SaturdayOpen = input[Constants.Facility.saturday_open] as! String
        SundayOpen = input[Constants.Facility.sunday_open] as! String
        Saturday = input[Constants.Facility.saturday] as! Bool
        Sunday = input[Constants.Facility.sunday] as! Bool
        Image = input[Constants.Facility.image] as! String
        Location = input[Constants.Facility.location] as! String
        Contact = input[Constants.Facility.contact] as! String
    }
}
