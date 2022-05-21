//
//  StartTabBarViewController.swift
//  ContactList
//
//  Created by Anton Vassel on 21.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let personContacts = Person.getPersonContacts()
        guard let personTVVC = viewControllers?.first as? PersonTableViewController else { return }
        guard let personAdVC = viewControllers?.last as? PersonAdvancedViewController else { return }
        
        personTVVC.personContacts = personContacts
        personAdVC.personContact = personContacts

    }


}
