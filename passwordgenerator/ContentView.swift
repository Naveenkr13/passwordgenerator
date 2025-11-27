//
//  ContentView.swift
//  passwordgenerator
//
//  Created by Naveen Kumar on 27/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var Password: String = ""
    var body: some View {
        VStack (spacing:10){
            Text("Simple Password Generator").font(.headline).fontWeight(.bold)
            
            // create password string
            
            Text(Password).font(.system(size:25,weight:.light)).padding().foregroundColor(.green)
            Button(action:
                    {Password=GeneratePassword(length:6)}
            ){
                Text("Generate Your Password ").padding().frame(maxWidth:.infinity)
                    .background(Color.green).foregroundColor(.white).cornerRadius(13)
                
            }
            .padding(.horizontal)
            
        }
        .padding()
    }

func GeneratePassword(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyz"
    return String(letters.shuffled().prefix(length))
    }
}
#Preview {
    ContentView()
}
