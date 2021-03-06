//
//  ViewController.swift
//  agingPeople
//
//  Created by Justin Trautner on 4/26/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var names = ["Rodrigo","Maria","Tiago","Ana","Antonio","Paulo", "Mariana","Laura","Rafael","Diego","Eva","Camila"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self

    }


}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "protoCell", for:  indexPath)
        
        
        cell.textLabel?.text = names[indexPath.row]
        
        cell.detailTextLabel?.text = String(Int.random(in: 5...95)) + " years old"
        
        return cell
        
    }
}

