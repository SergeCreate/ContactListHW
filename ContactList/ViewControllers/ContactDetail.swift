//
//  DetailsViewController.swift
//  ContactList
//
//  Created by Сергей Захаров on 18.04.2023.
//

import UIKit

class ContactDetail: UIViewController {
    
    @IBOutlet var teleponeNubmerLabel: UILabel!
    @IBOutlet var emalLabel: UILabel!
    
    var contactDetail: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = contactDetail.fullName
        
        teleponeNubmerLabel.text = "Phone number: \(contactDetail.telephoneNumber)"
        emalLabel.text = "Email: \(contactDetail.email)"
    }
}
