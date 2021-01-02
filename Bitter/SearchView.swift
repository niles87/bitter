//
//  SearchView.swift
//  Bitter
//
//  Created by Niles Bingham on 1/2/21.
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

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}


struct SearchField: View {
    
    @State var search: String
    
    var body: some View {
        TextField("Search", text: $search)
    }
}
