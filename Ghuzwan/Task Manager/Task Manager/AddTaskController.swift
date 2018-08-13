//
//  AddTaskController.swift
//  Task Manager
//
//  Created by IOS Developer on 08/08/2018.
//  Copyright © 2018 Slash Global. All rights reserved.
//


import UIKit



class AddTaskController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func DoneAction(sender: UIBarButtonItem) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
}
