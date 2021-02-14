//
//  ContentView.swift
//  bitter_ios
//
//  Created by Niles Bingham on 2/14/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color("background").ignoresSafeArea()
            
            VStack {
                TitleBar()
                    
                VStack { // BiteView will go here once DB is connected
                    
                    HStack {
                        Image(systemName: "person.circle").resizable().frame(width: 40, height: 40)
                            .aspectRatio(contentMode: .fit)
                            .padding(.trailing)
                        
                        Text("Username").font(.system(size: 18.0, weight: .medium)).padding(.leading)
                    }
                    
                    Text("This is the first Bite ever!!!!!").padding()
                }
                Spacer()
                ButtonView()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
