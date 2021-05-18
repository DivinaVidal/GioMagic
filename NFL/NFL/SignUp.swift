//
//  SignUp.swift
//  NFL
//
//  Created by Gio Cruz on 3/4/21.
//
import Foundation
import SwiftUI

struct SignUp : View {
    @available(iOS 13.0, *)
    var body: some View {
                VStack {
                    Text("Sign Up!")
                        .font(.largeTitle)
                        .cornerRadius(5)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    TextField("Email:", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    TextField("Username:", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    TextField("Password:", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                    
                    NavigationLink(destination: TriviaController() ){
                        Text("Submit")
                            .frame(minWidth: 0, maxWidth: 150)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(5)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
                .padding(.all)
                .background(
                Image("Signup")
                    //.resizable()
                    .padding(.horizontal, -1.0)
                    .scaledToFill()
                    .opacity(0.6)
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fit))
                //.frame(width: 500, height: 550, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
            }
struct SignUp_Previews: PreviewProvider {
    @available(iOS 13.0, *)
    static var previews: some View{
        SignUp()
    }
    
}
}
