//
//  TodaySchoolMeal.swift
//  inpostack
//
//  Created by 조승혁 on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class TodaySchoolMeal {
    var Morning : SchoolMeal!
    var Lunch : SchoolMeal!
    var Dinner : SchoolMeal!
    
    init(){
        let session = URLSession.shared
        let sendURL = Constants.Basic.APIBaseURL + Constants.Schoolmeal.Today
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
            
            performUIUpdatesOnMain {
                self.Morning = SchoolMeal(input : parsedResult[0] as! [String:AnyObject])
                self.Lunch = SchoolMeal(input : parsedResult[1] as! [String:AnyObject])
                self.Dinner = SchoolMeal(input : parsedResult[2] as! [String:AnyObject])
            }
            
            print(parsedResult)
        }
        
        // start the task!
        task.resume()
    }
}
