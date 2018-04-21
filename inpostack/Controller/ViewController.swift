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
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mealCollectionView!.dataSource = self
        mealCollectionView!.delegate = self
        
        mealCollectionView!.register(MealCardCell.self, forCellWithReuseIdentifier: "meal_card")
        
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
        return 3;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = mealCollectionView?.dequeueReusableCell(withReuseIdentifier: "meal_card", for: indexPath)
        return cell!
    }
    
    
}
