//
//  ViewController.swift
//  TTT
//
//  Created by Glen Jantz on 3/8/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLeft: UIButton!
    @IBOutlet weak var topMid: UIButton!
    @IBOutlet weak var topRight: UIButton!
    
    @IBOutlet weak var midLeft: UIButton!
    @IBOutlet weak var midMid: UIButton!
    @IBOutlet weak var midRight: UIButton!
    

    @IBOutlet weak var botLeft: UIButton!
    @IBOutlet weak var botMid: UIButton!
    @IBOutlet weak var botRight: UIButton!
    
    @IBOutlet weak var winnerLabel: UILabel!
    var colors = ["gray","gray","gray","gray","gray","gray","gray","gray","gray"]
    
    var count = 1
    //var turn = "red"
    override func viewDidLoad() {
        super.viewDidLoad()
        winnerLabel.isHidden = true
        topLeft.backgroundColor = UIColor.gray
        topMid.backgroundColor = UIColor.gray
        topRight.backgroundColor = UIColor.gray
        
        midLeft.backgroundColor = UIColor.gray
        midMid.backgroundColor = UIColor.gray
        midRight.backgroundColor = UIColor.gray
        
        botLeft.backgroundColor = UIColor.gray
        botMid.backgroundColor = UIColor.gray
        botRight.backgroundColor = UIColor.gray
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func checkGame()-> String{
        if colors[0] == "red" && colors[1] == "red" && colors[2] == "red" || colors[3] == "red" && colors[4] == "red" && colors[5] == "red" || colors[6] == "red" && colors[7] == "red" && colors[8] == "red" || colors[0] == "red" && colors[3] == "red" && colors[6] == "red" || colors[1] == "red" && colors[4] == "red" && colors[7] == "red" || colors[2] == "red" && colors[5] == "red" && colors[8] == "red" || colors[0] == "red" && colors[4] == "red" && colors[8] == "red" || colors[2] == "red" && colors[4] == "red" && colors[6] == "red" {
            return "Red wins!"
        }
        else if colors[0] == "blue" && colors[1] == "blue" && colors[2] == "blue" || colors[3] == "blue" && colors[4] == "blue" && colors[5] == "blue" || colors[6] == "blue" && colors[7] == "blue" && colors[8] == "blue" || colors[0] == "blue" && colors[3] == "blue" && colors[6] == "blue" || colors[1] == "blue" && colors[4] == "blue" && colors[7] == "blue" || colors[2] == "blue" && colors[5] == "blue" && colors[8] == "blue" || colors[0] == "blue" && colors[4] == "blue" && colors[8] == "blue" || colors[2] == "blue" && colors[4] == "blue" && colors[6] == "blue" {
            return "Blue wins!"
        }
        else{
            return ""
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func topLeftButtonPressed(_ sender: UIButton) {
        // if turn = "red" {
        
        // sender.backgroundColor = UIColor.red
        // colors[sender.tag-1] == "red"
        // if checkGame() == "Red wins!" {
        
        //
        //winnerLabel.isHidden = false
        //winnerLabel.text = "Red wins!"
        // turn = "blue"
        // }
        
        
        
        if colors[sender.tag-1] == "gray"{
            
        if sender.tag == 1 {
            if count % 2 == 0{
                topLeft.backgroundColor = UIColor.red
                count+=1
                colors[sender.tag-1] = "red"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }
            else{
                topLeft.backgroundColor = UIColor.blue
                count+=1
                colors[sender.tag-1] = "blue"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }
            
        }
        else if sender.tag == 2 {
            if count % 2 == 0{
                topMid.backgroundColor = UIColor.red
                count+=1
                colors[sender.tag-1] = "red"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }
            else{
                topMid.backgroundColor = UIColor.blue
                count+=1
                colors[sender.tag-1] = "blue"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }
            
        }
        else if sender.tag == 3 {
            if count % 2 == 0{
                topRight.backgroundColor = UIColor.red
                count+=1
                colors[sender.tag-1] = "red"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }
            else{
                topRight.backgroundColor = UIColor.blue
                count+=1
                colors[sender.tag-1] = "blue"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }
            
        }
        else if sender.tag == 4 {
            if count % 2 == 0{
                midLeft.backgroundColor = UIColor.red
                count+=1
                colors[sender.tag-1] = "red"
            }
            else{
                midLeft.backgroundColor = UIColor.blue
                count+=1
                colors[sender.tag-1] = "blue"
            }
            
        }
        else if sender.tag == 5 {
            if count % 2 == 0{
                midMid.backgroundColor = UIColor.red
                count+=1
                colors[sender.tag-1] = "red"
            }
            else{
                midMid.backgroundColor = UIColor.blue
                count+=1
                colors[sender.tag-1] = "blue"
            }
            
        }
        else if sender.tag == 6 {
            if count % 2 == 0{
                midRight.backgroundColor = UIColor.red
                count+=1
                colors[sender.tag-1] = "red"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }
            else{
                midRight.backgroundColor = UIColor.blue
                count+=1
                colors[sender.tag-1] = "blue"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }
            
        }
        else if sender.tag == 7 {
            if count % 2 == 0{
                botLeft.backgroundColor = UIColor.red
                count+=1
                colors[sender.tag-1] = "red"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }
            else{
                botLeft.backgroundColor = UIColor.blue
                count+=1
                colors[sender.tag-1] = "blue"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }

            
        }
        else if sender.tag == 8 {
            if count % 2 == 0{
                botMid.backgroundColor = UIColor.red
                count+=1
                colors[sender.tag-1] = "red"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }
            else{
               botMid.backgroundColor = UIColor.blue
                count+=1
                colors[sender.tag-1] = "blue"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }
            
        }
        else {
            if count % 2 == 0{
                botRight.backgroundColor = UIColor.red
                count+=1
                colors[sender.tag-1] = "red"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }
            else{
                botRight.backgroundColor = UIColor.blue
                count+=1
                colors[sender.tag-1] = "blue"
                if checkGame() == "Red wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Red wins!"
                }
                else if checkGame() == "Blue wins!"{
                    winnerLabel.isHidden = false
                    winnerLabel.text = "Blue wins!"
                }
                else{
                    winnerLabel.text = ""
                }
            }
            
        }
        }
    }
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        topLeft.backgroundColor = UIColor.gray
        topMid.backgroundColor = UIColor.gray
        topRight.backgroundColor = UIColor.gray
        
        midLeft.backgroundColor = UIColor.gray
        midMid.backgroundColor = UIColor.gray
        midRight.backgroundColor = UIColor.gray
        
        botLeft.backgroundColor = UIColor.gray
        botMid.backgroundColor = UIColor.gray
        botRight.backgroundColor = UIColor.gray
        count = 1
        winnerLabel.isHidden = true
        colors = ["gray","gray","gray","gray","gray","gray","gray","gray","gray"]
    }
    

}

