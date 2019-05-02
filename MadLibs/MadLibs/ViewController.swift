//
//  ViewController.swift
//  MadLibs
//
//  Created by Justin Trautner on 5/1/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    var passedString = "......."

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        mainLabel.text = passedString
    }
    
    @IBAction func unwindToHome(_ sender: UIStoryboardSegue){}


}

