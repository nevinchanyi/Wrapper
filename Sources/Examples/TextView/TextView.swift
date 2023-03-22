//
//  TextView.swift
//  
//
//  Created by Kostiantyn Nevinchanyi on 3/22/23.
//

import SwiftUI

struct TextView: View {
    
    @StateObject var viewModel = TextViewModel()
    
    var body: some View {
        WrapperView(view: viewModel.textView)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
