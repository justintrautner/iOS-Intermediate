//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Justin Trautner on 4/30/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ProtoCellDelegate {
    var sum = 0
    
    func addOperation(from cell: ProtoCell) {
        sum += Int(cell.numLabel.text!)!
        sumLabel.text = String(sum)
    }
    
    func subtractOperation(from cell: ProtoCell) {
        sum -= Int(cell.numLabel.text!)!
        sumLabel.text = String(sum)
    }
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sumLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }
    


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProtoCell") as! ProtoCell
        cell.numLabel.text = String(Int(pow(10, Double(indexPath.row))))
        cell.delegate = self
        return cell
    }
}
