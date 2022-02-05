//
//  ContentView.swift
//  Home Work 3.5. Lists
//
//  Created by Ирина on 03.02.2022.
//

import SwiftUI
let personList = PersonsList.getPersonsList()
struct ContentView: View {
    var body: some View {
        PersonsListView(personsList: personList)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
