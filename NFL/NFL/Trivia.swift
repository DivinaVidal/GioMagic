//
//  Trivia.swift
//  NFL
//
//  Created by Gio Cruz on 3/10/21.
//

import SwiftUI
import Foundation

struct Trivia: View {
    var body: some View {
        VStack(alignment: .center) {
        Text("Question")
            .cornerRadius(5)
            .font(.largeTitle)
            .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: .leading, endPoint: .trailing))
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
        //Text("option 1")
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("choice 1")
                    .cornerRadius(5)
                    .font(.largeTitle)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.black]), startPoint: .leading, endPoint: .trailing))
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("choice 2")
                    .cornerRadius(5)
                    .font(.largeTitle)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.black]), startPoint: .leading, endPoint: .trailing))
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            NavigationLink(destination:nextquestion()){
            Text("choice 3")
                .cornerRadius(5)
                .font(.largeTitle)
                .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.black]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(Color.red)
                .multilineTextAlignment(.center)
            }
            
    }
        .background(
        Image("trivia")
            .resizable()
            .padding(.all, -8.0)
            .scaledToFill()
            .opacity(0.8)
            //.frame(width: 390)
            //.frame(height: 360)
            .frame(width: 375, height: 375)
            .edgesIgnoringSafeArea(.all)
            .aspectRatio(contentMode: .fill))
}
struct Trivia_Previews: PreviewProvider {
    static var previews: some View {
        Trivia()
    }
}

}
