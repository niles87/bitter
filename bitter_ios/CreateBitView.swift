//
//  CreateBitView.swift
//  bitter_ios
//
//  Created by Niles Bingham on 2/14/21.
//


import SwiftUI

struct CreateBitView: View {
    var body: some View {
        
        VStack {
            TitleBar()
            Spacer()
            InputBit()
            Spacer()
        }
    }
}

struct InputBit: View {
    @State var biteEntry: String = "Enter a new bit!"
    
    var body: some View {
        VStack {
            Text("New Bit").padding()
                .font(.system(size: 20.0, weight: .semibold))
                .foregroundColor(Color("username"))
            TextEditor(text: $biteEntry)
            HStack {
                Spacer()
                Button(action: {
                    print("add new bit")
                }, label: {
                    Text("Submit").foregroundColor(.white)
                }).frame(width: 75, height: 40)
                .background(Color("button"))
                .cornerRadius(10.0)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 5))
            }
            
        }.frame(width: UIScreen.main.bounds.width - 30, height: 300)
        .border(Color.secondary, width: 1)
        .cornerRadius(5.0)
    }
}
