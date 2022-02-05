//
//  ContentView.swift
//  Home Work 3.5. Lists
//
//  Created by Ирина on 03.02.2022.
//

import SwiftUI
struct ContentView: View {
    private let person = Person.getPersonsList()
    
    var body: some View {
        TabView {
            PersonsListView(persons: person)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            SectionContactListView(sectionPerson: person)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
