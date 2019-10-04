//
//  SaveDataViewController.swift
//  dbProject
//
//  Created by COE-18 on 04/10/19.
//  Copyright © 2019 COE-18. All rights reserved.
//

import UIKit

class SaveDataViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtUserEmailId: UITextField!
    @IBOutlet weak var txtUserPassword: UITextField!
    
    
    var dbObj:dbManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dbObj = dbManager()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnSaveData(_ sender: UIBarButtonItem) {
        
        let cmdText = "INSERT INTO tblUser (username,emailid,password) VALUES('\(txtUserName.text!)','\(txtUserEmailId.text!)','\(txtUserPassword.text!)')"
        
        if(dbObj?.RunCommand(cmdText: cmdText))!
        {
            let alertView = UIAlertController(title: "New Record", message: "Data Saved!", preferredStyle: .alert)
            
            let btnOk = UIAlertAction(title: "Okay!@", style: .default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            })
            
            alertView.addAction(btnOk)
            
            self.present(alertView, animated: true, completion: nil)
            
            
        }
        
        
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
