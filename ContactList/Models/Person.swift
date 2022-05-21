//
//  Person.swift
//  ContactList
//
//  Created by Anton Vassel on 20.05.2022.
//

struct Person {
    let firstName: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(surname)"
    }
}


extension Person {
    static func getPersonContacts() -> [Person] {
        
        var persons:[Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phonenumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        for index in 0..<names.count {
            persons.append(Person(firstName: names[index],
                                  surname: surnames[index],
                                  phoneNumber: phones[index],
                                  email: emails[index]))
        }
        return persons
    }
}
