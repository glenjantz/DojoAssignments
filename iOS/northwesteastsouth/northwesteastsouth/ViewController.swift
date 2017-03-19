//
//  ViewController.swift
//  northwesteastsouth
//
//  Created by Glen Jantz on 3/15/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    var direction: String = ""
    @IBAction func northButtonPressed(_ sender: UIButton) {
        direction = "North"
        performSegue(withIdentifier: "unwind", sender: self)
    }
    
    
    @IBAction func westButtonPressed(_ sender: UIButton) {
        direction = "West"
        performSegue(withIdentifier: "unwind", sender: self)
    }
    
    @IBAction func southButtonPressed(_ sender: UIButton) {
        direction = "South"
        performSegue(withIdentifier: "unwind", sender: self)
    }
    
    @IBAction func eastButtonPressed(_ sender: UIButton) {
        direction = "East"
        performSegue(withIdentifier: "unwind", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DirectionViewController{
            destination.output = direction
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tomainview(_ segue: UIStoryboardSegue){
        
    }

}

