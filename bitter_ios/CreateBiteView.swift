//
//  CreateBiteView.swift
//  bitter_ios
//
//  Created by Niles Bingham on 2/14/21.
//


import SwiftUI

struct CreateBiteView: View {
    var body: some View {
        ZStack {
            Color("lightgray").ignoresSafeArea()
            VStack {
                TitleBar()
                
                InputBite()
                Spacer()
                ButtonView()
            }
        }
    }
}

struct InputBite: View {
    @State var biteEntry: String = "Enter a new bite!"
    
    var body: some View {
        VStack {
            Text("New Bite").padding()
                .font(.system(size: 20.0, weight: .semibold))
                .foregroundColor(Color("username"))
            TextEditor(text: $biteEntry)
            HStack {
                Spacer()
                Button(action: {
                    print("add new bite")
                }, label: {
                    Text("Submit").foregroundColor(.white)
                }).frame(width: 75, height: 40)
                .background(Color("button"))
                .cornerRadius(10.0)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 5))
            }
            
        }.frame(width: UIScreen.main.bounds.width - 30, height: 300)
        .border(Color.secondary, width: 3)
        .cornerRadius(5.0)
    }
}
