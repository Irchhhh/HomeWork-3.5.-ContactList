//
//  PersonsListView.swift
//  Home Work 3.5. Lists
//
//  Created by Ирина on 03.02.2022.
//

import SwiftUI

struct PersonsListView: View {
    let personsList: [PersonsList]
    var body: some View {
        NavigationView {
            List(personsList) { personList in
                NavigationLink(destination: ContactListInfoView(contactListInfo: personList)) {
                Text("\(personList.fullName)")
            }
            }
                    .listStyle(.plain)
                    .navigationTitle("Contact List")
            
            
        
        }
    }
            }
struct PersonsListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsListView(personsList: PersonsList.getPersonsList())
    }
}
