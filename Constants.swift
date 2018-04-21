//
//  Constants.swift
//  inpostack
//
//  Created by 조승혁 on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

struct Constants{
    struct Basic{
        static let APIBaseURL = "http://inpostack.poapper.com/api/"
    }
    
    struct Schoolmeal {
        static let Today = "diets/today/"
        static let Weekly = "diets/this_week/"
        static let id = "id"
        static let menu_en = "dishes_en"
        static let menu_ko = "dishes_ko"
        static let date = "date"
        static let name_en = "name_en"
        static let name_ko = "name_ko"
        static let price = "price"
        static let note = "note"
        static let calory = "calory"
        static let restaurant = "restaurant"
    }
    
    struct Delivery {
        static let Path = "deliveries/"
        static let Menus = "/menus/"
        static let id = "id"
        static let category = "category"
        static let name = "name"
        static let note = "note"
        static let open = "open"
        static let close = "close"
        static let location = "location"
        static let contact = "contact"
        static let menu_price = "price"
        static let menu_name = "name"
        static let menu_note = "note"
        static let menu_category = "category"
    }
    
    struct Facility {
        static let Path = "facilities/"
        static let name = "name"
        static let description = "description"
        static let workday_open = "workday_open"
        static let saturday_open = "saturday_open"
        static let sunday_open = "sunday_open"
        static let saturday = "saturday"
        static let sunday = "sunday"
        static let image = "image_url"
        static let location = "location"
        static let contact = "contact"
    }
}
