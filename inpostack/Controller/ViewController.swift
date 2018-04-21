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
        
        navigationController?.navigationBar.frame.size = (navigationController?.navigationBar.sizeThatFits(CGSize()))!
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewFlowLayout {
    
}
