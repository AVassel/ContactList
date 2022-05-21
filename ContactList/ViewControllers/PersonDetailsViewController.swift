//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Anton Vassel on 20.05.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var personContact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = personContact.fullName
        phoneLabel.text = "Phone: \(personContact.phoneNumber)"
        emailLabel.text = "Email: \(personContact.email)"
    }

}
