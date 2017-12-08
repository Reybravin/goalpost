//
//  GoalCell.swift
//  goalpost
//
//  Created by Sergiy Sachuk on 12/8/17.
//  Copyright © 2017 Sergiy Sachuk. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configureCell(desciption: String, type: String, goalProgressAmount: Int){
        self.goalDescriptionLbl.text = desciption
        self.goalTypeLbl.text = type
        self.goalProgressLbl.text = String(describing: goalProgressAmount)
    }
}
