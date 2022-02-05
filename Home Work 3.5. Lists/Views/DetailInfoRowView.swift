//
//  DetailInfoRowView.swift
//  Home Work 3.5. Lists
//
//  Created by Ирина on 04.02.2022.
//

import SwiftUI

struct DetailInfoRowView: View {
    let title: String
    let icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
            Text(title)
        }
        
    }
}
struct DetailInfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfoRowView(title: "898009", icon: "phone")
    }
}

struct ImagePerson: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "person.fill")
                .resizable()
                .foregroundColor(Color.black)
                .frame(width: 100, height: 100)
                .padding()
            Spacer()
            
        }
    }
}

struct ImagePerson_Previews: PreviewProvider {
    static var previews: some View {
        ImagePerson()
    }
}
