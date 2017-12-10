//
//  GoalsVC.swift
//  goalpost
//
//  Created by Sergiy Sachuk on 12/8/17.
//  Copyright © 2017 Sergiy Sachuk. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
        //let goal = Goal()
        //goal.goalCompletionValue = Int32(exactly: 12.0)
    }
    @IBAction func addGoalBtnPressed(_ sender: Any) {
        print("Button was pressed")
    } 
    
}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
        cell.configureCell(desciption: "Each salad twice a weak", type: .shortTerm, goalProgressAmount: 2)
        return cell
    }
}




