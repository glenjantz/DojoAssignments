//
//  ViewController.swift
//  coreDataTest
//
//  Created by Glen Jantz on 3/20/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    var items = ["one","two"]
    let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var t = [BeastItem3]()

    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        FetchAllItems()
    }
    func FetchAllItems() {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "BeastItem3")
        do {
            let result = try managedObjectContext.fetch(request)
            let item = result as! [BeastItem3]
        }
        catch {
            print("\(error)")
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        var userinput: String = ""
        if let temp = String(textField.text!){
            userinput = temp
        }
        items.append("\(userinput)")
        tableView.reloadData()
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}

