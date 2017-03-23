//
//  ViewController.swift
//  bucketlist5
//
//  Created by Glen Jantz on 3/22/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit
import CoreData

class BucketListTableViewController: UITableViewController, AddItemDelegate {
    
    let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var items = [BLItem]()

    func FetchAllItems() {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "BLItem")
        do {
            let result = try managedObjectContext.fetch(request)
            items = result as! [BLItem]
        }
        catch {
            print("\(error)")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FetchAllItems()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func saveButtonPressed(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?){
        if let ip = indexPath {
            let item = items[ip.row]
            item.text = text
        }
        else{
            let item = NSEntityDescription.insertNewObject(forEntityName: "BLItem", into: managedObjectContext) as! BLItem
            item.text = text
            items.append(item)
        }
        do{
            try managedObjectContext.save()
        }
        catch {
            
        }
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        performSegue(withIdentifier: "EditItem", sender: indexPath)
    }

    func cancelButtonPressed(by controller: AddItemTableViewController){
        dismiss(animated: true, completion: nil)
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].text
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! UINavigationController
        let AddItem = destination.topViewController as! AddItemTableViewController
        AddItem.delegate = self
        if segue.identifier == "EditItem" {
            let indexPath = sender as! NSIndexPath
            let item = items[indexPath.row]
            AddItem.editItem = item.text
            AddItem.indexPath = indexPath
            
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        managedObjectContext.delete(items[indexPath.row])
        do {
            try managedObjectContext.save()
        }
        catch {
            print("\(error)")
        }
        tableView.reloadData()
    }
}

