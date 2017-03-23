//
//  TableViewController.swift
//  todolist
//
//  Created by Glen Jantz on 3/20/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit
import CoreData
class TableViewController: UITableViewController, AddItemDelegate {
    
    let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//    var items = [[String]]()
    var things = [ToDoListItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         FetchAllItems()
        tableView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func FetchAllItems() {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "ToDoListItem")
        do {
            let result = try managedObjectContext.fetch(request)
            things = result as! [ToDoListItem]
        }
        catch {
            print("\(error)")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        print("Appended items  \(items)")
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! CustomCell
//        cell.titleLabel.text = items[indexPath.row][0]
         cell.titleLabel.text = things[indexPath.row].title
//        cell.descriptionLabel.text = items[indexPath.row][1]
        cell.descriptionLabel.text = things[indexPath.row].descriptiontext
//        cell.dateLabel.text = items[indexPath.row][2]
        cell.dateLabel.text = things[indexPath.row].date
        if things[indexPath.row].check == true {
            cell.accessoryType = .checkmark
        }
        else {
            cell.accessoryType = .none
        }
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return items.count
        return things.count
    }
    
    func addItems(title: String, description: String, date: String,check: Bool) {
        let item = NSEntityDescription.insertNewObject(forEntityName: "ToDoListItem", into: managedObjectContext) as! ToDoListItem
        item.title = title
        item.descriptiontext = description
        item.date = date
        item.check = check
        things.append(item)
        do{
            try managedObjectContext.save()
        }
        catch {
            
        }
//        items.append([title,description,date])
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ViewController
        destination.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath){
            if cell.accessoryType == .checkmark {
                cell.accessoryType = .none
                things[indexPath.row].check = false
            }
            else{
                cell.accessoryType = .checkmark
                things[indexPath.row].check = true
            }
        }
        do {
            try managedObjectContext.save()
        }
        catch {
            print("\(error)")
        }
        tableView.reloadData()
    }
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
    }
    
}
