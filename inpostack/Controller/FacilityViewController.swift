//
//  FacilityViewController.swift
//  inpostack
//
//  Created by 박원빈 on 2018. 4. 21..
//  Copyright © 2018년 inpostack-ios. All rights reserved.
//

import UIKit

class FacilityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var FacilityController: UISegmentedControl!
    
    @IBOutlet weak var tableview: UITableView!
    var faci = AllFacility()
    var present : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("check" + String(faci.facilities.count))
        return faci.facilities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "FacilityCell", for: indexPath) as! FacilityCell
        cell.facname.text = faci.facilities[indexPath.row].Name
        cell.facloca.text = faci.facilities[indexPath.row].Location
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
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
