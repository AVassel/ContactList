//
//  DataManager.swift
//  ContactList
//
//  Created by Anton Vassel on 20.05.2022.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = ["Ivan",
                 "Sergey",
                 "Marat",
                 "Oleg",
                 "Nikolay",
                 "Stepan",
                 "Vladimir"]
    
    let surnames = ["Golubev",
                   "Ivanov",
                   "Stepanov",
                   "Petrov",
                   "Nikulin",
                   "Ogorodov",
                   "Shapiro"]
    
    let phonenumbers = ["999-432-45-87",
                       "921-421-84-34",
                       "911-749-37-29",
                       "905-382-85-94",
                       "999-458-85-93",
                       "904-042-21-18",
                       "911-212-21-93"]
    
    let emails = ["wkmvs@jn.nl",
                 "lndsl@kdds.ciw",
                 "qwnjds@sdfs.kdo",
                 "kdlhso@jdkld.opk",
                 "ejfiwn@svsd.dps",
                 "sdvnsd@sdjps.ieo",
                 "sdjvsdbv@jfkd.pwh"]
    
    private init() {}
}
