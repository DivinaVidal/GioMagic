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
        
        TriviaController()
}
struct Trivia_Previews: PreviewProvider {
    static var previews: some View {
        Trivia()
    }
}

}

struct TriviaController : UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: UIViewControllerRepresentableContext<TriviaController>) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "Home")
        return controller
    }

}
