//
//  ContentView.swift
//  NFL
//
//  Created by Gio Cruz on 3/4/21.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to NFL Trivia!")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(5)
                Spacer()
                NavigationLink(destination: SignUp()){
                    Text("Continue")
                        .frame(minWidth: 0, maxWidth: 150)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(5)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
            .padding(.all, 4.0)
            .background(
            Image("BackGround")
                .resizable()
                .padding(-1.0)
                .scaledToFill()
                .opacity(0.8)
                .frame(width: 1.0)
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill))
            //.frame(width: 500, height: 550, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
    
}

