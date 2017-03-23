//
//  ViewController.swift
//  mydogs
//
//  Created by Glen Jantz on 3/21/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//
import Foundation
import UIKit
import CoreData



protocol AddDogItem: class {
    func AddTheDog(name: String,color: String,treat: String, image: NSData)
}



class CollectionViewController: UICollectionViewController, AddDogItem, EditDogDelegate {
    
    let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var doggies = [Doggie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FetchAllItems()
        collectionView?.reloadData()    
        // Do any additional setup after loading the view, typically from a nib.
    }

    func FetchAllItems() {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Doggie")
        do {
            let result = try managedObjectContext.fetch(request)
            doggies = result as! [Doggie]
        }
        catch {
            print("\(error)")
        }
        
    }
    func EditItem(name: String, color: String, treat: String, image: NSData, indexPath: NSIndexPath) {
        doggies[indexPath.row].name = name
        doggies[indexPath.row].color = color
        doggies[indexPath.row].treat = treat
        doggies[indexPath.row].picture = image
        do {
            try managedObjectContext.save()
        }
        catch{
            print("\(error)")
        }
        collectionView?.reloadData()
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "EditDog", sender: indexPath)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddDog" {
            let destination = segue.destination as! AddDogViewController
            destination.delegate = self
        }
        else if segue.identifier == "EditDog" {
            let ip = sender as! NSIndexPath
            let nav = segue.destination as! UINavigationController
            let destination = nav.topViewController as! EditDogViewController
            destination.delegate = self
            destination.doggiename = doggies[ip.row].name
            destination.doggiecolor = doggies[ip.row].color
            destination.doggietreat = doggies[ip.row].treat
            destination.doggieimage = doggies[ip.row].picture
            destination.indexpath = ip
        }
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! CustomCell
        cell.collectionLabel.text = doggies[indexPath.row].name
        if let img = UIImage(data: doggies[indexPath.row].picture! as Data) {
            cell.collectionImage.image = img
        }
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return doggies.count
    }

    
    
    func AddTheDog(name: String, color: String, treat: String, image: NSData) {
          let item = NSEntityDescription.insertNewObject(forEntityName: "Doggie", into: managedObjectContext) as! Doggie
        item.name = name
        item.color = color
        item.picture = image
        item.treat = treat
        doggies.append(item)
        do{
            try managedObjectContext.save()
        }
        catch {
            
        }
        collectionView?.reloadData()
    }
    func DeleteDog(indexpath: NSIndexPath) {
        managedObjectContext.delete(doggies[indexpath.row])
        do{
            try managedObjectContext.save()
        }
        catch {
            
        }
        FetchAllItems()
        collectionView?.reloadData()
    }

@IBAction func unwind(_ segue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
    
    }
    
    @IBAction func unwind2(_ segue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {}
    
}

