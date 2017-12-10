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
    
    func configureCell(desciption: String, type: GoalType, goalProgressAmount: Int){
        self.goalDescriptionLbl.text = desciption
        self.goalTypeLbl.text = type.rawValue //to pull String value from a GoalType
        self.goalProgressLbl.text = String(describing: goalProgressAmount)
    }
}
