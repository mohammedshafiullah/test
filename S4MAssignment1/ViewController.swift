//
//  ViewController.swift
//  S4MAssignment1
//
//  Created by mohammed shafiullah on 25/10/17.
//  Copyright © 2017 mohammed shafiullah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cell : SessionTableViewCell!
   
  var subject = ["Advanced Animations with UIKi Animations with UIKittAdvanced Animations with UIKi Animations with UIKitt","A Peek at 3D Touch","Architecting for Performance on watchOS 3 Performance on watchOS 3","Building Great Workout Apps","CloudKit Best Practices"]
    
    var location = ["Marina 101, Dubai", "Princess Tower, Dubai","Elite Residence, Dubai","Address the BLVD, Dubai","Almas Tower, Dubai"]
    
    var startAndEndTime = ["3.00 - 4.00 PM","3.00 - 4.00 PM","3.00 - 4.00 PM","3.00 - 4.00 PM","3.00 - 4.00 PM"]
    
    var ownerName = ["Joshua Baker","Michael Caliman","Joshua Baker","Joshua Baker","Michael Caliman"]
    
    var accountNmae = ["Vision Corporation","Server Tech Lead","Vision Corporation","Server Tech Lead","Vision Corporation"]
    
    
    
    @IBOutlet var sessionTableObj: UITableView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
//        cell.subjectLabelObj.sizeToFit()
//        cell.subjectLabelObj.numberOfLines=0
//        cell.subjectLabelObj.lineBreakMode = .byWordWrapping
//        
//        
//        cell.locationLabelObj.sizeToFit()
//        cell.locationLabelObj.numberOfLines=0
//        cell.locationLabelObj.lineBreakMode = .byWordWrapping
//        
//        
//        cell.startAndEndDateLabelObj.sizeToFit()
//        cell.startAndEndDateLabelObj.numberOfLines=0
//        cell.startAndEndDateLabelObj.lineBreakMode = .byWordWrapping
//        
//        cell.ownerNameLabelObj.sizeToFit()
//        cell.ownerNameLabelObj.numberOfLines=0
//        cell.ownerNameLabelObj.lineBreakMode = .byWordWrapping
//        
//        cell.accountNameLabelObj.sizeToFit()
//        cell.accountNameLabelObj.numberOfLines=0
//        cell.accountNameLabelObj.lineBreakMode = .byWordWrapping
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //tableview delegate
    
    func numberOfSectionsInTableView(_ tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        //make sure you use the relevant array sizes
        return location.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell
    {
         cell  = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SessionTableViewCell
        
        if(cell == nil)
        {
            cell = Bundle.main.loadNibNamed("Cell", owner: self, options: nil)?[0] as! SessionTableViewCell;
        }
        
 
        //////loading sessions information in listview/////
        
         let subject = self.subject[indexPath.row] as String
             let location = self.location[indexPath.row] as String
                 let startAndEndTime = self.startAndEndTime[indexPath.row] as String
                     let ownerName = self.ownerName[indexPath.row] as String
        let accountNmae = self.accountNmae[indexPath.row] as String
        
        
       

        
        

        cell.subjectLabelObj.text = subject
        cell.locationLabelObj.text=location
        cell.startAndEndDateLabelObj.text = startAndEndTime
        cell.ownerNameLabelObj.text=ownerName
        cell.accountNameLabelObj.text = accountNmae
        
       
        
     cell.cellHeightConstraint.constant = cell.subjectLabelHeightConstraint.constant+cell.ownerAndAccountViewHeightConstrint.constant+cell.startAndEndDateLabelHeightConstraint.constant+cell.locationLabelHeightConstraint.constant+cell.subjectLabelHeightConstraint.constant
        
        
        self.sessionTableObj.rowHeight = CGFloat(cell.cellHeightConstraint.constant)

       
        return cell as SessionTableViewCell
    }
    
    
    
    
     func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        
   return 100
    }


}

