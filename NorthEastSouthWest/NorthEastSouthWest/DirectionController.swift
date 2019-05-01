//
//  DirectionController.swift
//  NorthEastSouthWest
//
//  Created by Justin Trautner on 4/30/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

class DirectionController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    var output : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text = output

        // Do any additional setup after loading the view.
    }
    


}
