//
//  BusViewController.swift
//  inpostack
//
//  Created by 박원빈 on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class BusViewController: UIViewController {

    @IBOutlet weak var BusController: UISegmentedControl!
    @IBOutlet weak var Label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ChangeBus(_ sender: Any) {
        if BusController.selectedSegmentIndex == 0 {
            Label1.text = "105번 버스"
        }
        else if BusController.selectedSegmentIndex == 1 {
            Label1.text = "108번 버스"
        }
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
