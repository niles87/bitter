//
//  SearchView.swift
//  bitter_ios
//
//  Created by Niles Bingham on 2/14/21.
//

import SwiftUI

struct SearchView: View {
    
    var body: some View {
        
        ZStack {
            Color("lightgray").ignoresSafeArea()
            VStack {
                TitleBar()
                SearchField(search: "")
                Spacer()
                ButtonView()
            }
        }
    }
}

struct SearchField: View {
    
    @State var search: String
    
    var body: some View {
        TextField("Search", text: $search)
    }
}
