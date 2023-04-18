//
//  DetailsViewController.swift
//  ContactList
//
//  Created by Сергей Захаров on 18.04.2023.
//

import UIKit

final class ContactDetailViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contactDetail: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = contactDetail.fullName
        
        phoneNumberLabel.text = "Phone number: \(contactDetail.phoneNumber)"
        emailLabel.text = "Email: \(contactDetail.email)"
    }
}
