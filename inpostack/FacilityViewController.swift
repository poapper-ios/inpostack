//
//  FacilityViewController.swift
//  inpostack
//
//  Created by 박원빈 on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class FacilityViewController: UIViewController {

    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var FacilityController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ChageFacility(_ sender: Any) {
        if FacilityController.selectedSegmentIndex == 0 {
            Label1.text = "지곡회관"
        }
        else if FacilityController.selectedSegmentIndex == 1 {
            Label1.text = "학생회관"
        }
        else if FacilityController.selectedSegmentIndex == 2 {
            Label1.text = "기타"
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
