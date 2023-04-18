//
//  ViewController.swift
//  ContactList
//
//  Created by Сергей Захаров on 18.04.2023.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var contactList = Person.toGetPerson()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailContactVC = segue.destination as? ContactDetail else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailContactVC.contactDetail = contactList[indexPath.row]
    }
}


