//
//  Delivery.swift
//  inpostack
//
//  Created by 조승혁 on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class Delivery {
    var Id : Int!
    var Name : String!
    var Open : String!
    var Close : String!
    var Location : String!
    var Contact : String!
    var Menu : NSArray!
    
    init(input : [String:AnyObject]){
        Id = input[Constants.Delivery.id] as! Int
        Name = input[Constants.Delivery.name] as! String
        Open = input[Constants.Delivery.open] as! String
        Close = input[Constants.Delivery.close] as! String
        Location = input[Constants.Delivery.location] as! String
        Contact = input[Constants.Delivery.contact] as! String
        
        let session = URLSession.shared
        let sendURL = Constants.Basic.APIBaseURL + Constants.Delivery.Path + String(Id) + Constants.Delivery.Menus
        let url = URL(string : sendURL)!
        let request = URLRequest(url : url)
        
        // create network request
        let task = session.dataTask(with: request) { (data, response, error) in
            // if an error occurs, print it and re-enable the UI
            func displayError(_ error: String) {
                print(error)
                print("URL at time of error: \(url)")
            }
            
            /* GUARD: Was there an error? */
            guard (error == nil) else {
                displayError("There was an error with your request: \(error)")
                return
            }
            
            /* GUARD: Did we get a successful 2XX response? */
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode, statusCode >= 200 && statusCode <= 299 else {
                displayError("Your request returned a status code other than 2xx!")
                return
            }
            
            /* GUARD: Was there any data returned? */
            guard let data = data else {
                displayError("No data was returned by the request!")
                return
            }
            
            // parse the data
            let parsedResult: NSArray!
            do {
                parsedResult = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! NSArray
            } catch {
                displayError("Could not parse the data as JSON: '\(data)'")
                return
            }
            
            //print(parsedResult)
            performUIUpdatesOnMain {
                self.Menu = parsedResult
            }
        }
        
        // start the task!
        task.resume()
    }
}
