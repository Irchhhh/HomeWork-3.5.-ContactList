//
//  PersonsListView.swift
//  Home Work 3.5. Lists
//
//  Created by Ирина on 03.02.2022.
//

import SwiftUI

struct PersonsListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { personList in
                NavigationLink(destination: ContactListInfoView(contact: personList)) {
                    Text(personList.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}
struct PersonsListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsListView(persons: Person.getPersonsList())
    }
}
