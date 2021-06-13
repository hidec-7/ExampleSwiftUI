//
//  ContentView.swift
//  ExampleSwiftUI
//
//  Created by hideto c. on 2021/06/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Screen(title: "Home",
                   text: "Firest Screen",
                   imageName: "house")
        }
    }
}

struct Screen: View {
    
    let title: String
    let text: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
                .padding()
            
            Text(text)
                .font(.system(size: 30, weight: .light, design: .default))
                .padding()
            
            NavigationLink(
                destination: Screen(title: "Second",
                                    text: "Second Screen",
                                    imageName: "bell"),
                label: {
                    ContinueButton(color: .pink)
                }
            )
        }
        .navigationTitle(title)
    }
}

struct ContinueButton: View {
    
    let color: Color
    
    var body: some View {
        Text("Continue")
            .frame(width: 200, height: 50, alignment: .center)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
