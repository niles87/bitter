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
            TabView {
                Home()
                    .tabItem {
                    Label("Home", systemImage: "house")
                    
                }
                CreateBitView()
                    .tabItem {
                    Label("", systemImage: "plus.circle.fill")
                }
                SearchView()
                    .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
