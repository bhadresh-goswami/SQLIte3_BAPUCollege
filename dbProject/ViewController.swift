//
//  ViewController.swift
//  dbProject
//
//  Created by COE-18 on 04/10/19.
//  Copyright © 2019 COE-18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dbObj:dbManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dbObj = dbManager()
        
//        if(dbObj?.RunCommand(cmdText: "insert into tblUser(username,emailid,password) values('a','a','a')"))!
//        {
//            print("Data Inserted!")
//        }
//        else{
//            print("Data Not Able to Inserted!")
//        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

