//
//  BeastTableViewCell.swift
//  beastList
//
//  Created by Justin Trautner on 4/29/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

class BeastTableViewCell: UITableViewCell {
    
    
    var delegate: BeastCellDelegate?
    @IBAction func showButtonPressed(_ sender: UIButton) {
        print("show button pressed")
        delegate?.showTaskDescription(description: (self.textLabel?.text)!)
    }
}
