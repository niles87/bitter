//
//  SearchView.swift
//  bitter_ios
//
//  Created by Niles Bingham on 2/14/21.
//

import SwiftUI

struct SearchView: View {
    
    var body: some View {
        
        VStack {
            TitleBar()
            SearchField(search: "")
            Spacer()
        }
    }
    
}

struct SearchField: View {
    
    @State var search: String
    
    var body: some View {
        HStack{
            TextField("Search", text: $search)
                .padding()
            Button(action: {}, label: {
                Text("Search")
            })
        }
    }
}
