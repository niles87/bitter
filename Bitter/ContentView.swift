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
            Color("lightgray").ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("Bitter")
                        .padding(EdgeInsets(top: 0.0, leading: 10.0, bottom: 10.0, trailing: 10.0))
                        .font(.system(size: 30.0, weight: .semibold))
                        .foregroundColor(Color("username"))
                        .frame(width: UIScreen.main.bounds.width - 55, height: 50, alignment: .leading)
                    Button(action: {
                        print("sign in")
                    }, label: {
                        Image(systemName: "person.crop.circle.badge.xmark").resizable()
                            .frame(width: 45, height: 40)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("username"))
                    })
                }
                    
                VStack { // BiteView will go here once DB is connected
                    
                    HStack {
                        Image(systemName: "person.circle").resizable().frame(width: 40, height: 40)
                            .aspectRatio(contentMode: .fit)
                            .padding(.trailing)
                        
                        Text("Username").font(.system(size: 18.0, weight: .medium)).padding(.leading)
                    }
                    
                    VStack {
                        Text("This is the first Bite ever!!!!!").padding()
                    }
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

struct ButtonView: View {
    
    var body: some View {
        HStack{
            Button(action: {
                print("search button")
            }, label: {
                Text("Search")
            }).frame(width: UIScreen.main.bounds.width / 3, height: 50).background(Color("button"))
                .foregroundColor(.black)
                .cornerRadius(5)
            
            Button(action: {
                print("Create Bite")
            }, label: {
                Image(systemName: "plus.circle.fill").resizable().aspectRatio(contentMode: .fit)
            }).frame(width: 50, height: 50).cornerRadius(50)
            
            Button(action: {
                print("profile")
            }, label: {
                Text("Profile")
            }).frame(width: UIScreen.main.bounds.width / 3, height: 50).background(Color("button"))
            .cornerRadius(5).foregroundColor(.black)
        }
    }
}
