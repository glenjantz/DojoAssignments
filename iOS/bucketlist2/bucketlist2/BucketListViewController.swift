//
//  ViewController.swift
//  bucketlist2
//
//  Created by Glen Jantz on 3/19/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class BucketListViewController: UITableViewController, BucketListDelegate {

    var items = ["Goto the moon", "Swim in the Amazon", "Ride a motor bike"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    func cancelButtonPressed(by controller: AddItemViewController) {
        dismiss(animated: true, completion: nil)
    }
    func saveButtonPressed(by controller: AddItemViewController, with text: String, at indexPath: NSIndexPath?) {
        if let ip = indexPath {
            items[ip.row] = text
        }
        else {
            items.append(text)
        }
        
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "EditItem", sender: indexPath)
//        
//    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        items.remove(at: indexPath.row)
        tableView.reloadData()
    }

    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        performSegue(withIdentifier: "EditItem", sender: indexPath)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let nav = segue.destination as! UINavigationController
            let addItem = nav.topViewController as! AddItemViewController
            addItem.delegate = self
        if segue.identifier == "EditItem" {
            let indexPath = sender as! NSIndexPath
            let item = items[indexPath.row]
            addItem.itemtobeedited = item
            addItem.indexPath = indexPath
        }
      
    }
}

