//
//  ContactListInfo.swift
//  Home Work 3.5. Lists
//
//  Created by Ирина on 04.02.2022.
//

import SwiftUI

struct ContactListInfoView: View {
    let contactListInfo: PersonsList
    var body: some View {
        
        NavigationView {
            List {
                ImagePerson()
                DetailInfoRowView(
                    title: contactListInfo.phoneNumber,
                    icon: "phone"
                )
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("\(contactListInfo.fullName)")
        }
    }
}
struct ContactListInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactListInfoView(contactListInfo: PersonsList.getPersonsList().first!)
    }
}
