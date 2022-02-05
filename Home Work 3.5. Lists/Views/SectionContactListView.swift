//
//  SectionContactListView.swift
//  Home Work 3.5. Lists
//
//  Created by Ирина on 04.02.2022.
//

import SwiftUI

struct SectionContactListView: View {
    let sectionPerson: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(sectionPerson) { personContact in
                    Section(header: Text(personContact.fullName)) {
                        DetailInfoRowView(
                            info: personContact.phoneNumber,
                            icon: "phone"
                        )
                        DetailInfoRowView(
                            info: personContact.email,
                            icon: "envelope.open")
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}
                            
struct SectionContactListView_Previews: PreviewProvider {
    static var previews: some View {
        SectionContactListView(sectionPerson: Person.getPersonsList())
    }
}
