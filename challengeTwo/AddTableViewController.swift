//
//  AddTableViewController.swift
//  challengeTwo
//
//  Created by Lijie Zhao on 8/15/17.
//  Copyright © 2017 Lijie Zhao. All rights reserved.
//

import UIKit

class AddTableViewController: UITableViewController {

    @IBOutlet weak var newName: UITextField!
    var addHandler:((String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func saveName(_ sender: UIBarButtonItem) {
        let addName = newName.text!
        
        addHandler?(addName)
        
        //go to the previous VC
        navigationController?.popViewController(animated: true)
    }
}
