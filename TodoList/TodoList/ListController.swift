//
//  ViewController.swift
//  TodoList
//
//  Created by Justin Trautner on 5/2/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit
import CoreData

class ListController: UITableViewController {
    
    var items = [TodoListItem]()
    
    let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    let saveContext = (UIApplication.shared.delegate as! AppDelegate).saveContext
    
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchAllItems()
    }
//    Number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
//    Setting cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListItemCell", for: indexPath) as! ListItemCell
        cell.titleLabel.text = items[indexPath.row].title
        cell.infoLabel.text = items[indexPath.row].info
        dateFormatter.dateFormat = "MM/dd/yyyy"
        cell.dateLabel.text = dateFormatter.string(from:items[indexPath.row].date!)
        if items[indexPath.row].isCompleted == true{
            cell.accessoryType = .checkmark
        }
        return cell
    }
//    Setting delegate
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navController = segue.destination as! UINavigationController
        let addController = navController.topViewController as! AddController
        addController.delegate = self
    }
//    All items
    func fetchAllItems(){
        let request:NSFetchRequest<TodoListItem> = TodoListItem.fetchRequest()
        do{
            let results = try managedObjectContext.fetch(request)
            items = results
        }catch{
            print(error)
        }
    }
//    Checkmark cell
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath){
            if cell.accessoryType == .checkmark{
                cell.accessoryType = .none
                items[indexPath.row].isCompleted = false
            }else{
                cell.accessoryType = .checkmark
                items[indexPath.row].isCompleted = true
            }
            saveContext()
        }
    }
    
}
//    Extending/Conforming to delegate
extension ListController: AddControllerDelegate{
//    Adding item
    func addItemPressed(by controller: AddController, title: String, info: String, date: Date) {
        let item = TodoListItem(context: managedObjectContext)
        item.title = title
        item.info = info
        item.date = date
        item.isCompleted = false
        items.append(item)
        saveContext()
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
//   Cancel button
    func cancelButtonPressed(by controller: AddController) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
