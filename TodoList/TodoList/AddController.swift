//
//  AddController.swift
//  TodoList
//
//  Created by Justin Trautner on 5/2/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

class AddController: UITableViewController {
    
    weak var delegate: AddControllerDelegate?
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var infoField: UITextField!
    @IBOutlet weak var dateField: UIDatePicker!
    
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    @IBAction func addItemPressed(_ sender: UIButton) {
        delegate?.addItemPressed(by: self, title: titleField.text!, info: infoField.text!, date: dateField.date)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

   
}
