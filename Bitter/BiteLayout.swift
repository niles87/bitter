//
//  BiteLayout.swift
//  Bitter
//
//  Created by Niles Bingham on 1/2/21.
//

import SwiftUI

struct BiteView: View {
    
    var userImage: String
    var userName: String
    var bite: String
    
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
                Text(bite).padding()
            }
        }
    }
}
