//
//  GoalsVC.swift
//  goalpost
//
//  Created by Sergiy Sachuk on 12/8/17.
//  Copyright © 2017 Sergiy Sachuk. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func addGoalBtnPressed(_ sender: Any) {
        print("Button was pressed")
    }
    
}

