//
//  ViewController.swift
//  beastList
//
//  Created by Justin Trautner on 4/26/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tasks = ["Exercise for 30 minutes", "Wireframe for some project", "Do laundry"]
    
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBAction func buttonPress(_ sender: UIButton) {
        tasks.append(inputField.text!)
        inputField.text = ""
        tableView.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "protoCell", for:  indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
        tasks.remove(at: indexPath.row)
        tableView.reloadData()
    }
}

