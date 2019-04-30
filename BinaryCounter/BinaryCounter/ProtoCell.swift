//
//  ProtoCell.swift
//  BinaryCounter
//
//  Created by Justin Trautner on 4/30/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

class ProtoCell: UITableViewCell {
    
    var delegate: ProtoCellDelegate?

    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var numLabel: UILabel!
    
    @IBAction func plusButtonPress(_ sender: UIButton) {
        delegate?.addOperation(from: self)
    }
    
    @IBAction func subtractButtonPress(_ sender: UIButton) {
        delegate?.subtractOperation(from: self)
    }
}
