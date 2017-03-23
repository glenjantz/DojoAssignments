//
//  ViewController.swift
//  customcell
//
//  Created by Glen Jantz on 3/20/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, CustomCellDelegate {
    var num = [0,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
    var total = 0

    @IBOutlet var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! BinaryTableViewCell
        let temp = (pow(10.0,num[indexPath.row]))
        cell.Label.text = String(describing: temp)
//        cell.number = Int(pow(10.0,num[indexPath.row]))
        cell.delegate = self
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return num.count
    }
    func buttonPressed(withValue value: Int) {
        total += value
        totalLabel.text = String(total)
    }
}

