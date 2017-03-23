//
//  AddDogViewController.swift
//  mydogs
//
//  Created by Glen Jantz on 3/21/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

class AddDogViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var picker = UIImagePickerController()
    var delegate: AddDogItem?
    
    @IBOutlet weak var dogsNameLabel: UITextField!
    @IBOutlet weak var dogsColorLabel: UITextField!
    @IBOutlet weak var dogsTreatLabel: UITextField!
    @IBOutlet weak var dogImage: UIImageView!
    
    @IBAction func addDogButtonPressed(_ sender: UIButton) {
        let data = UIImagePNGRepresentation(dogImage.image!) as NSData?
        self.delegate?.AddTheDog(name: dogsNameLabel.text!, color: dogsColorLabel.text!, treat: dogsTreatLabel.text!, image: data!)
        performSegue(withIdentifier: "unwind", sender: self)
    }
    
    @IBAction func dogImageButtonPressed(_ sender: UIButton) {
        picker.allowsEditing = false
        picker.sourceType = .photoLibrary
        picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage //2
        dogImage.contentMode = .scaleAspectFit //3
        dogImage.image = chosenImage //4
        dismiss(animated:true, completion: nil) //5
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dogsNameLabel.placeholder = "Dogs Name"
        dogsColorLabel.placeholder = "Dogs Color"
        dogsTreatLabel.placeholder = "Dogs Favorite Treat"
        picker.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
