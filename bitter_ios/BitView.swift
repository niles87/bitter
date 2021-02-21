//
//  BiteView.swift
//  bitter_ios
//
//  Created by Niles Bingham on 2/14/21.
//

import SwiftUI

struct Home: View {
    private let column: [GridItem] = Array(repeating: .init(), count: 1)
    let bits = API.main.getBits()
    var body: some View {
        ScrollView {
            TitleBar()
            LazyVGrid(columns: column) {
                
            }
        }
    }
}

struct BitView: View {
    let bit: Bit
    
    var body: some View {
        VStack {
            
            HStack {
                Image(systemName: userImage).resizable().frame(width: 40, height: 40)
                    .aspectRatio(contentMode: .fit)
                    .padding(.trailing)
                
                Text(userName).font(.system(size: 18.0, weight: .medium)).padding(.leading)
                    .foregroundColor(Color("username"))
            }
            
            VStack {
                Text(bit.bit).padding()
            }
            
        }
    }
}
