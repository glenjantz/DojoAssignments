//
//  ViewController.swift
//  pianopracticeapp
//
//  Created by Glen Jantz on 3/28/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var pianoSoundC3 = NSURL(fileURLWithPath: Bundle.main.path(forResource: "C3", ofType: "mp3")!)
    var audioPlayerC3 = AVAudioPlayer()
    
    var pianoSoundCS = NSURL(fileURLWithPath: Bundle.main.path(forResource: "C#", ofType: "mp3")!)
    var audioPlayerCS = AVAudioPlayer()
    
    var pianoSoundD = NSURL(fileURLWithPath: Bundle.main.path(forResource: "D", ofType: "mp3")!)
    var audioPlayerD = AVAudioPlayer()
    
    var pianoSoundDS = NSURL(fileURLWithPath: Bundle.main.path(forResource: "D#", ofType: "mp3")!)
    var audioPlayerDS = AVAudioPlayer()
    
    var pianoSoundE = NSURL(fileURLWithPath: Bundle.main.path(forResource: "E", ofType: "mp3")!)
    var audioPlayerE = AVAudioPlayer()
    
    var pianoSoundF = NSURL(fileURLWithPath: Bundle.main.path(forResource: "F", ofType: "mp3")!)
    var audioPlayerF = AVAudioPlayer()
    
    var pianoSoundFS = NSURL(fileURLWithPath: Bundle.main.path(forResource: "F#", ofType: "mp3")!)
    var audioPlayerFS = AVAudioPlayer()
    
    var pianoSoundG = NSURL(fileURLWithPath: Bundle.main.path(forResource: "G", ofType: "mp3")!)
    var audioPlayerG = AVAudioPlayer()
    
    var pianoSoundGS = NSURL(fileURLWithPath: Bundle.main.path(forResource: "G#", ofType: "mp3")!)
    var audioPlayerGS = AVAudioPlayer()
    
    var pianoSoundA = NSURL(fileURLWithPath: Bundle.main.path(forResource: "A", ofType: "mp3")!)
    var audioPlayerA = AVAudioPlayer()
    
    var pianoSoundAS = NSURL(fileURLWithPath: Bundle.main.path(forResource: "A#", ofType: "mp3")!)
    var audioPlayerAS = AVAudioPlayer()
    
    var pianoSoundB = NSURL(fileURLWithPath: Bundle.main.path(forResource: "B", ofType: "mp3")!)
    var audioPlayerB = AVAudioPlayer()
    
    var pianoSoundC4 = NSURL(fileURLWithPath: Bundle.main.path(forResource: "C4", ofType: "mp3")!)
    var audioPlayerC4 = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        do{
            audioPlayerC3 = try AVAudioPlayer(contentsOf: pianoSoundC3 as URL)
            audioPlayerCS = try AVAudioPlayer(contentsOf: pianoSoundCS as URL)
            audioPlayerD = try AVAudioPlayer(contentsOf: pianoSoundD as URL)
            audioPlayerDS = try AVAudioPlayer(contentsOf: pianoSoundDS as URL)
            audioPlayerE = try AVAudioPlayer(contentsOf: pianoSoundE as URL)
            audioPlayerF = try AVAudioPlayer(contentsOf: pianoSoundF as URL)
            audioPlayerFS = try AVAudioPlayer(contentsOf: pianoSoundFS as URL)
            audioPlayerG = try AVAudioPlayer(contentsOf: pianoSoundG as URL)
            audioPlayerGS = try AVAudioPlayer(contentsOf: pianoSoundGS as URL)
            audioPlayerA = try AVAudioPlayer(contentsOf: pianoSoundA as URL)
            audioPlayerAS = try AVAudioPlayer(contentsOf: pianoSoundAS as URL)
            audioPlayerB = try AVAudioPlayer(contentsOf: pianoSoundB as URL)
            audioPlayerC4 = try AVAudioPlayer(contentsOf: pianoSoundC4 as URL)
        }catch{
            print("\(error)")
        }
        
        audioPlayerC3.prepareToPlay()
        audioPlayerCS.prepareToPlay()
        audioPlayerD.prepareToPlay()
        audioPlayerDS.prepareToPlay()
        audioPlayerE.prepareToPlay()
        audioPlayerF.prepareToPlay()
        audioPlayerFS.prepareToPlay()
        audioPlayerG.prepareToPlay()
        audioPlayerGS.prepareToPlay()
        audioPlayerA.prepareToPlay()
        audioPlayerAS.prepareToPlay()
        audioPlayerB.prepareToPlay()
        audioPlayerC4.prepareToPlay()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    
    @IBAction func c3ButtonDown(_ sender: UIButton) {
        audioPlayerC3.currentTime = 0
        audioPlayerC3.volume = 1
        audioPlayerC3.play()
    
    }
    
    @IBAction func csButtonDown(_ sender: UIButton) {
        audioPlayerCS.currentTime = 0
        audioPlayerCS.volume = 1
        audioPlayerCS.play()
    }
    
    
    @IBAction func dButtonDown(_ sender: UIButton) {
        audioPlayerD.currentTime = 0
        audioPlayerD.volume = 1
        audioPlayerD.play()
    }
    
    @IBAction func dsButtonDown(_ sender: UIButton) {
        audioPlayerDS.currentTime = 0
        audioPlayerDS.volume = 1
        audioPlayerDS.play()
    }
    
    @IBAction func eButtonDown(_ sender: UIButton) {
        audioPlayerE.currentTime = 0
        audioPlayerE.volume = 1
        audioPlayerE.play()
    }
    @IBAction func fButtonDown(_ sender: UIButton) {
        audioPlayerF.currentTime = 0
        audioPlayerF.volume = 1
        audioPlayerF.play()
    }
    
    @IBAction func fsButtonDown(_ sender: UIButton) {
        audioPlayerFS.currentTime = 0
        audioPlayerFS.volume = 1
        audioPlayerFS.play()
    }
    
    @IBAction func gButtonDown(_ sender: UIButton) {
        audioPlayerG.currentTime = 0
        audioPlayerG.volume = 1
        audioPlayerG.play()
    }
    
    @IBAction func gsButtonDown(_ sender: UIButton) {
        audioPlayerGS.currentTime = 0
        audioPlayerGS.volume = 1
        audioPlayerGS.play()
    }
    
    @IBAction func aButtonDown(_ sender: UIButton) {
        audioPlayerA.currentTime = 0
        audioPlayerA.volume = 1
        audioPlayerA.play()
    }
    @IBAction func asButtonDown(_ sender: UIButton) {
        audioPlayerAS.currentTime = 0
        audioPlayerAS.volume = 1
        audioPlayerAS.play()
    }
    @IBAction func bButtonDown(_ sender: UIButton) {
        audioPlayerB.currentTime = 0
        audioPlayerB.volume = 1
        audioPlayerB.play()
    }
    
    @IBAction func c4ButtonDown(_ sender: UIButton) {
        audioPlayerC4.currentTime = 0
        audioPlayerC4.volume = 1
        audioPlayerC4.play()
    }
    
    
    @IBAction func noteReleased(_ sender: UIButton) {
                if sender.tag == 0 {
                    audioPlayerC3.setVolume(0, fadeDuration: 1)
                }
                if sender.tag == 1 {
                    audioPlayerCS.setVolume(0, fadeDuration: 1)
                }
                if sender.tag == 2 {
                  audioPlayerD.setVolume(0, fadeDuration: 1)
                }
                if sender.tag == 3 {
                    audioPlayerDS.setVolume(0, fadeDuration: 1)
                }
                if sender.tag == 4 {
                   audioPlayerE.setVolume(0, fadeDuration: 1)
                }
                if sender.tag == 5 {
                    audioPlayerF.setVolume(0, fadeDuration: 1)
                }
                if sender.tag == 6 {
                    audioPlayerFS.setVolume(0, fadeDuration: 1)
                }
                if sender.tag == 7 {
                    audioPlayerG.setVolume(0, fadeDuration: 1)
                }
                if sender.tag == 8 {
                    audioPlayerGS.setVolume(0, fadeDuration: 1)
                }
                if sender.tag == 9 {
                    audioPlayerA.setVolume(0, fadeDuration: 1)
                }
                if sender.tag == 10 {
                    audioPlayerAS.setVolume(0, fadeDuration: 1)
                }
                if sender.tag == 11 {
                    audioPlayerB.setVolume(0, fadeDuration: 1)
                }
                if sender.tag == 12 {
                    audioPlayerC4.setVolume(0, fadeDuration: 1)
                }
        
    }

    

}

