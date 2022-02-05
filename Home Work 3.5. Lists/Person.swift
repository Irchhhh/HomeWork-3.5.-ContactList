//
//  PersonsList.swift
//  Home Work 3.5. Lists
//
//  Created by Ирина on 03.02.2022.
//

import SwiftUI

class Person: Identifiable {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    init(name: String, surname: String, phoneNumber: String, email: String) {
        self.name = name
        self.surname = surname
        self.phoneNumber = phoneNumber
        self.email = email
        
        
    }
}

extension Person {
    static func getPersonsList() -> [Person] {
        var personsList: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iterationCounts = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<iterationCounts {
            let personList = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phones[index],
                email: emails[index]
            )
            personsList.append(personList)
        }
        return personsList
    }
    
}
