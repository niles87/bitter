//
//  BitterLayout.swift
//  bitter_ios
//
//  Created by Niles Bingham on 2/14/21.
//

import SwiftUI

struct TitleBar: View {
    
    var body: some View {
        HStack {
            Text("Bitter")
                .padding(EdgeInsets(top: 0.0, leading: 10.0, bottom: 10.0, trailing: 10.0))
                .font(.system(size: 30.0, weight: .semibold))
                .foregroundColor(Color("username"))
                .frame(width: 100, height: 50, alignment: .leading)
            Spacer()
            Button(action: {
                print("sign in")
            }, label: {
                Image(systemName: "person.crop.circle.badge.xmark").resizable()
                    .frame(width: 35, height: 30)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color("username"))
            }).padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 5.0))
        }
    }
}

struct ButtonView: View {
    
    var body: some View {
        HStack {
            Button(action: {
                print("home button pressed")
            }, label: {
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 30, height: 30)
            }).frame(width: UIScreen.main.bounds.width / 3, height: 50)
            .background(Color("button"))
            .foregroundColor(Color("background"))
            .cornerRadius(5)
            
            Button(action: {
                print("Create Bite")
            }, label: {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }).frame(width: 50, height: 50)
            .background(Color("background"))
            .cornerRadius(50)
            .foregroundColor(Color("button"))
            
            Button(action: {
                print("search button pressed")
            }, label: {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 30, height: 30)
            }).frame(width: UIScreen.main.bounds.width / 3, height: 50)
            .background(Color("button"))
            .cornerRadius(5)
            .foregroundColor(Color("background"))
        }
    }
}

