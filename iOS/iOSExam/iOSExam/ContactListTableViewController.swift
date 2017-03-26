//
//  ViewController.swift
//  iOSExam
//
//  Created by Glen Jantz on 3/24/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit
import CoreData
class ContactListTableViewController: UITableViewController, AddContactDelegate, ViewContactDelegate, EditContactDelegate {

    let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var contacts = [Contacts]()
    
    func FetchAllItems() {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Contacts")
        do {
            let result = try managedObjectContext.fetch(request)
            contacts = result as! [Contacts]
        }
        catch {
            print("\(error)")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        FetchAllItems()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func editcancelpressed(by controller: EditContactViewController) {
        dismiss(animated: true, completion: nil)
    }
    
    func editsavepressed(by controller: EditContactViewController, with fname: String, with lname: String, with number: String, indexPath: NSIndexPath) {
        let item = contacts[indexPath.row]
        item.firstname = fname
        item.lastname = lname
        item.phone = number
        saveObject()
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! CustomCell
        cell.NameLabel?.text = contacts[indexPath.row].firstname! + " " + contacts[indexPath.row].lastname!
        cell.numberLabel?.text = contacts[indexPath.row].phone!
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func cancelPressed(by controller: AddContactViewController) {
        dismiss(animated: true, completion: nil)
    }
    func savePressed(by controller: AddContactViewController, with fname: String, with lname: String, with number: String) {
        let item = NSEntityDescription.insertNewObject(forEntityName: "Contacts", into: managedObjectContext) as! Contacts
        item.firstname = fname
        item.lastname = lname
        item.phone = number
        contacts.append(item)
        saveObject()
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddItem" {
            let destination = segue.destination as! UINavigationController
            let addItem = destination.topViewController as! AddContactViewController
            addItem.delegate = self
        }
        if segue.identifier == "ViewContact" {
            let destination = segue.destination as! UINavigationController
            let viewItem = destination.topViewController as! ViewContactViewController
            let indexPath = sender as! NSIndexPath
            let item = contacts[indexPath.row]
            viewItem.contactfname = item.firstname
            viewItem.contactlname = item.lastname
            viewItem.contactnumber = item.phone
//            viewItem.indexPath = indexPath
            viewItem.delegate = self
        }
        if segue.identifier == "EditContact" {
            let destination = segue.destination as! UINavigationController
            let editItem = destination.topViewController as! EditContactViewController
            let indexPath = sender as! NSIndexPath
            let item = contacts[indexPath.row]
            editItem.fnameedit = item.firstname
            editItem.lnameedit = item.lastname
            editItem.numberedit = item.phone
            editItem.indexPath = indexPath
            editItem.delegate = self
            
        }
        
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(title: "Action Sheet", message: "What would you like to do?", preferredStyle: .actionSheet)
        let viewButton = UIAlertAction(title: "View", style: .default, handler: {(action)-> Void in
            self.performSegue(withIdentifier: "ViewContact", sender: indexPath)
        })
        let editButton = UIAlertAction(title: "Edit", style: .default, handler: {(action)->Void in
            self.performSegue(withIdentifier: "EditContact", sender: indexPath)
        })
        let deleteButton = UIAlertAction(title: "Delete", style: .destructive, handler: {(action)->Void in
            let contact = self.contacts[indexPath.row]
            self.managedObjectContext.delete(contact)
            self.contacts.remove(at: indexPath.row)
            self.tableView.reloadData()
            self.saveObject()

        })
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: {(action)->Void in
            print("cancelButton pressed")
        })
        
        alertController.addAction(viewButton)
        alertController.addAction(editButton)
        alertController.addAction(deleteButton)
        alertController.addAction(cancelButton)
        self.navigationController!.present(alertController, animated: true, completion: nil)
    }

    
    func donePressed(by controller: ViewContactViewController) {
        dismiss(animated: true, completion: nil)
    }
    func saveObject() {
        do {
            try managedObjectContext.save()
        } catch {
            print (error)
        }
    }
    
    
}

