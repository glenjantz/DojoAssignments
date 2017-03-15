//
//  ViewController.swift
//  tables
//
//  Created by Glen Jantz on 3/13/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate {
    var tasks: [String] = []
 
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBAction func beastButtonPressed(_ sender: UIButton) {
        var userinput: String = ""
        if let temp = String(taskTextField.text!){
            userinput = temp
        }
        tasks.append("\(userinput)")
        tableView.reloadData()
        print (tasks)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDataSource {
    
    // MAKE SURE THESE ARE WITHIN UITableViewDataSource EXTENSION!
    // How many cells are we going to need?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return an integer that indicates how many rows (cells) to draw
        return tasks.count
    }
    // How should I create each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create/populate it with data then return it
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
        tasks.remove(at: indexPath.row)
        tableView.reloadData()
    }
}

