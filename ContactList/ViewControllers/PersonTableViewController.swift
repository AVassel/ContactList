//
//  PersonListTableViewController.swift
//  ContactList
//
//  Created by Anton Vassel on 20.05.2022.
//

import UIKit

class PersonTableViewController: UITableViewController {
    
    var personContacts: [Person] = []
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personContacts.count
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let personContact = personContacts[indexPath.row]
        
        content.text = personContact.fullName
        
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPaths = tableView.indexPathForSelectedRow else { return }
        let personContact = personContacts[indexPaths.row]
        detailsVC.personContact = personContact
    }
}
