//
//  ContentView.swift
//  Bitter
//
//  Created by Niles Bingham on 1/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            VStack{
                Text("Bitter")
                    .padding()
                    .font(.system(size: 25.0, weight: .semibold))
                    .foregroundColor(.green)
                
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct BiteView {
    
    var body: some View {
        HStack {
            
        }
    }
}
