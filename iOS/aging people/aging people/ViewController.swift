//
//  ViewController.swift
//  aging people
//
//  Created by Glen Jantz on 3/13/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit


let people = ["George","Betty","Fran","Joe","Helda","Winifried","Zed","Sara","Jeffy","Abraham","Anna","Melinda"]

class ViewController: UIViewController {
    

    

    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self


        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return an integer that indicates how many rows (cells) to draw
        return people.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create/populate it with data then return it
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = people[indexPath.row]
        
        let age = arc4random_uniform(90) + 5
        cell.detailTextLabel?.text = "\(age) years old"
        
        return cell
    }

    
}

