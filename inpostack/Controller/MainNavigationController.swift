//
//  MainNavigationController.swift
//  inpostack
//
//  Created by 유정우 on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.heightAnchor.constraint(equalToConstant: 120).isActive = true
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
//        let height: CGFloat = 190 //whatever height you want to add to the existing height
//        let bounds = self.navigationBar.bounds
//        self.navigationBar.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height + height)
        navigationBar.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UINavigationBar {
    open override func sizeThatFits(_ size: CGSize) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 200)
    }
}
