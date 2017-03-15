//
//  ViewController.swift
//  bucketlist
//
//  Created by Glen Jantz on 3/14/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class bucketlistViewController: UITableViewController, AddItemTableViewControllerDelegate {
    
    
    @IBAction func plusButtonPressed(_ sender: UIBarButtonItem) {
        
        performSegue(withIdentifier: "EditItemSegue", sender: nil)
    }
    var items = ["goto the moon", "eat a candy bar", "swim in the amazon", "ride a bike in tokyo"]
    
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListItemCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
        
        
    }
    
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print ("selected")
//        
//    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        
        performSegue(withIdentifier: "EditItemSegue", sender: indexPath)
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        items.remove(at: indexPath.row)
        tableView.reloadData()
        
        
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if sender == nil {
            let navigationController = segue.destination as! UINavigationController
            let addItemTableViewController = navigationController.topViewController as! AddItemTableViewController
            addItemTableViewController.delegate = self
        }
//        if segue.identifier == "AddItemSegue" {
//            let navigationController = segue.destination as! UINavigationController
//            let addItemTableViewController = navigationController.topViewController as! AddItemTableViewController
//            addItemTableViewController.delegate = self
// 
//        }
//            
            
        else{
            let navigationController = segue.destination as! UINavigationController
            let addItemTableViewController = navigationController.topViewController as! AddItemTableViewController
            addItemTableViewController.delegate = self
            let indexPath = sender as! NSIndexPath
            let item = items[indexPath.row]
            addItemTableViewController.item = item
            addItemTableViewController.indexPath = indexPath
            
        }
        
        
    }
    
    
    func cancelButtonPressed(by controller: AddItemTableViewController) {
        print("im the hidden controller, but i am responding to the cancel button press on the top view controller")
        dismiss(animated: true, completion: nil)
        
        
    }
    
    
    func itemSaved(by controller: AddItemTableViewController, with text: String,at indexPath: NSIndexPath?){
        if let ip = indexPath {
            items[ip.row] = text
        }else {
            items.append(text)
        }
        tableView.reloadData()
        print("recieved text from top view \(text)")
        dismiss(animated: true, completion: nil)
        
    }
}
