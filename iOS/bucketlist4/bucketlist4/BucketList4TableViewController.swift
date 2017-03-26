//
//  ViewController.swift
//  BucketList4
//
//  Created by Glen Jantz on 3/19/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit
import CoreData
class BucketList4TableViewController: UITableViewController, BucketListItemDelegate {

//    var items = ["Goto the moon", "get black belt", "eat lunch"]
    let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var items = [BucketListItem]()
    
    func FetchAllItems() {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "BucketListItem")
        do {
            let result = try managedObjectContext.fetch(request)
            items = result as! [BucketListItem]
        }
        catch {
            print("\(error)")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FetchAllItems()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
//        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.text = items[indexPath.row].text!
        return cell
    }
    func cancelButtonPressed(by controller: AddItemTableViewController){
        dismiss(animated: true, completion: nil)
    }
    func saveButtonPressed(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?) {
        if let ip = indexPath {
//            items[ip.row] = text
            let item = items[ip.row]
            item.text = text
        }else{
            let item = NSEntityDescription.insertNewObject(forEntityName: "BucketListItem", into: managedObjectContext) as! BucketListItem
                item.text = text
            items.append(item)
//            items.append(text)

        }
        do{
            try managedObjectContext.save()
        }
        catch {

        }
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! UINavigationController
        let addItem = destination.topViewController as! AddItemTableViewController
        addItem.delegate = self
        if segue.identifier == "EditItem" {
            let indexPath = sender as! NSIndexPath
            let item = items[indexPath.row]
//            addItem.itemtobeedited = item
               addItem.itemtobeedited = item.text!
            addItem.indexPath = indexPath
        }
    }
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        performSegue(withIdentifier: "EditItem", sender: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {

        managedObjectContext.delete(items[indexPath.row])
        do{
            try managedObjectContext.save()
        }
        catch {
            
        }
        
        items.remove(at: indexPath.row)
        tableView.reloadData()
    }
}

