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
    
    var meals:TodaySchoolMeal?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        meals = TodaySchoolMeal()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mealCollectionView!.dataSource = self
        mealCollectionView!.delegate = self
        
        navigationController?.navigationBar.frame.size = (navigationController?.navigationBar.sizeThatFits(CGSize()))!
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = mealCollectionView?.dequeueReusableCell(withReuseIdentifier: "meal_card", for: indexPath) as? MealCardCell
        switch indexPath.row {
        case 0:
            cell!.setupCell(meal: meals!.MorningA, title: "Breakfast - A")
            cell!.setBGImage(img: #imageLiteral(resourceName: "breakfast_bg"))
        case 1:
            cell!.setupCell(meal: meals!.MorningB, title: "Breakfast - A")
            cell!.setBGImage(img: #imageLiteral(resourceName: "breakfast_bg"))
        case 2:
            cell!.setupCell(meal: meals!.Lunch, title: "Lunch")
            cell!.setBGImage(img: #imageLiteral(resourceName: "lunch_bg"))
        case 3:
            cell!.setupCell(meal: meals!.Dinner, title: "Dinner")
            cell!.setBGImage(img: #imageLiteral(resourceName: "dinner_bg"))
        default: break
        }
        
        return cell!
    }
    
    
}
