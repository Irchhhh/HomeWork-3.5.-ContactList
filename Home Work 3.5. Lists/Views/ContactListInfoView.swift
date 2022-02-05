//
//  ContactListInfo.swift
//  Home Work 3.5. Lists
//
//  Created by Ирина on 04.02.2022.
//

import SwiftUI

struct ContactListInfoView: View {
    let contact: Person
    
    var body: some View {
        NavigationView {
            List {
                ImagePerson()
                DetailInfoRowView(
                    info: contact.phoneNumber,
                    icon: "phone"
                )
                DetailInfoRowView(
                    info: contact.email, icon: "envelope.open")
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("\(contact.fullName)")
        }
    }
}
struct ContactListInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactListInfoView(contact: Person.getPersonsList()[0])
    }
}
