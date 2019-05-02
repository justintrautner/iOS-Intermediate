//
//  FormController.swift
//  MadLibs
//
//  Created by Justin Trautner on 5/1/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

class FormController: UIViewController {
    
    @IBOutlet weak var adjEntry: UITextField!
    @IBOutlet weak var v1Entry: UITextField!
    @IBOutlet weak var v2Entry: UITextField!
    @IBOutlet weak var nounEntry: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ViewController
        
        destination.passedString = "The \(adjEntry.text!) \(nounEntry.text!) \(v1Entry.text!) the building to visit a very nice man. Can I interest you in \(v2Entry.text!)"
    }
    

}
