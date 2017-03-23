//
//  EditDogViewController.swift
//  mydogs
//
//  Created by Glen Jantz on 3/21/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

protocol EditDogDelegate {
    func EditItem(name: String, color: String, treat: String, image: NSData, indexPath: NSIndexPath)
    func DeleteDog(indexpath: NSIndexPath)
}

class EditDogViewController: UIViewController {
    var delegate: EditDogDelegate?
    var doggiename: String?
    var doggiecolor: String?
    var doggietreat: String?
    var doggieimage: NSData?
    var indexpath: NSIndexPath?
    var picker = UIImagePickerController()
    
    
    @IBOutlet weak var editDogImage: UIImageView!
    @IBOutlet weak var editDogNameLabel: UITextField!
    @IBOutlet weak var editDogColorLabel: UITextField!
    @IBOutlet weak var editDogTreatLabel: UITextField!
    
    @IBAction func changeDoggieImageButton(_ sender: UIButton) {
        picker.allowsEditing = false
        picker.sourceType = .photoLibrary
        picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        present(picker, animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage //2
        editDogImage.contentMode = .scaleAspectFit //3
        editDogImage.image = chosenImage //4
        dismiss(animated:true, completion: nil) //5
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
   
    
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "unwind2", sender: self)
    }
    
    
    @IBAction func donePressed(_ sender: UIBarButtonItem) {
        let data = UIImagePNGRepresentation(editDogImage.image!) as NSData?
        self.delegate?.EditItem(name: editDogNameLabel.text!, color: editDogColorLabel.text!, treat: editDogTreatLabel.text!, image: data!, indexPath: indexpath!)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func deletePressed(_ sender: UIButton) {
        self.delegate?.DeleteDog(indexpath: indexpath!)
        dismiss(animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        editDogNameLabel.text = doggiename
        editDogColorLabel.text = doggiecolor
        editDogTreatLabel.text = doggietreat
        if let img = UIImage(data: doggieimage as! Data) {
             editDogImage.image = img
        }
    }
    
    
}
