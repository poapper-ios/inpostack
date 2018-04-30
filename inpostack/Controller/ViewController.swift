//
//  ViewController.swift
//  inpostack
//
//  Created by 유정우 on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mealCollectionView: UICollectionView?
    
    var MorningA : SchoolMeal!
    var MorningB : SchoolMeal!
    var Lunch : SchoolMeal!
    var Dinner : SchoolMeal!
    var Deliver = AllDelivery()
    var Facility = AllFacility()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mealCollectionView!.dataSource = self
        mealCollectionView!.delegate = self
        
        if let flowlayout = mealCollectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            flowlayout.minimumLineSpacing = 40;
        }
        
        mealCollectionView?.isPagingEnabled = true
        
        // Do any additional setup after loading the view, typically from a nib.
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
                self.MorningA = SchoolMeal(input : parsedResult[0] as! [String:AnyObject])
                self.MorningB = SchoolMeal(input : parsedResult[1] as! [String:AnyObject])
                self.Lunch = SchoolMeal(input : parsedResult[2] as! [String:AnyObject])
                self.Dinner = SchoolMeal(input : parsedResult[3] as! [String:AnyObject])
            }
            DispatchQueue.main.async {
                self.mealCollectionView?.reloadData()
            }
            print(parsedResult)
        }

        // start the task!
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showFacility(_ sender: AnyObject){
        performSegue(withIdentifier: "facility", sender: Facility)
    }
    
    @IBAction func showDeliver(_ sender: AnyObject){
        performSegue(withIdentifier: "deliver", sender: Deliver)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "deliver" {
            let deliverScreen = segue.destination as! DeliveryViewController
            deliverScreen.Deliver = sender as! AllDelivery
            print(deliverScreen.Deliver.deliveries.count)
        }
        else if segue.identifier == "facility" {
            let facilityScreen = segue.destination as! FacilityViewController
            facilityScreen.faci = sender as! AllFacility
            print(facilityScreen.faci.facilities.count)
        }
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = mealCollectionView?.dequeueReusableCell(withReuseIdentifier: "meal_card", for: indexPath) as? MealCardCell
        switch indexPath.row {
        case 0:
            cell!.setupCell(meal: MorningA, title: "Breakfast - A")
            cell!.setBGImage(img: #imageLiteral(resourceName: "breakfast_bg"))
        case 1:
            cell!.setupCell(meal: MorningB, title: "Breakfast - B")
            cell!.setBGImage(img: #imageLiteral(resourceName: "breakfast_bg"))
        case 2:
            cell!.setupCell(meal: Lunch, title: "Lunch")
            cell!.setBGImage(img: #imageLiteral(resourceName: "lunch_bg"))
        case 3:
            cell!.setupCell(meal: Dinner, title: "Dinner")
            cell!.setBGImage(img: #imageLiteral(resourceName: "dinner_bg"))
        default: break
        }
        
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: mealCollectionView!.frame.width - 40, height: mealCollectionView!.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {

        return UIEdgeInsetsMake(0, 20, 0, 20)
    }
    
    
}
