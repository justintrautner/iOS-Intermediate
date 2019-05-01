//
//  ViewController.swift
//  NorthEastSouthWest
//
//  Created by Justin Trautner on 4/30/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! DirectionController
        destination.output = segue.identifier
    }
    
    @IBAction func unwindToVc(_ sender: UIStoryboardSegue){}

}

