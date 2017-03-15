//
//  ViewController.swift
//  GNG
//
//  Created by Glen Jantz on 3/9/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var random = Int(arc4random_uniform(100)+1)
    var guess = 0
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBAction func submitNum(_ sender: UIButton) {
        let alert = UIAlertController(title: "Incorrect", message: "message", preferredStyle: UIAlertControllerStyle.alert)
        if let temp = Int(userInput.text!){
            guess = temp
        }
        else {
            guess = 0
        }
        var status = true
        if guess == 0 {
            alert.message = "Invalid input"
            status = false
        }
        else if guess < random {
            alert.message = "\(guess) is too low"
            status = false
        }
        else if guess > random {
            alert.message = "\(guess) is too high"
            status = false
        }
        if status == false {
            alert.view.backgroundColor = UIColor.red
            alert.addAction(UIAlertAction(title: "Guess again", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else {
            alert.message = "\(guess) is correct!"
            alert.title = "Correct"
            alert.view.backgroundColor = UIColor.green
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            reset()
        }
        userInput.text = nil
    }
    func reset(){
        random = Int(arc4random_uniform(100)+1)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

