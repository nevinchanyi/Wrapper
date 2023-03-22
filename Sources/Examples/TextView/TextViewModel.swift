//
//  TextViewModel.swift
//  
//
//  Created by Kostiantyn Nevinchanyi on 3/22/23.
//

import SwiftUI


class TextViewModel: NSObject, ObservableObject {
    
    @Published var text = ""
    let textView = UITextView()
    
    override init() {
        super.init()
        textView.delegate = self
        textView.text = "example"
    }
}

extension TextViewModel: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        print("--> \(#function):", textView.text)
        text = textView.text
    }
}
