//
//  SwiftUIView.swift
//
//
//  Created by Kostiantyn Nevinchanyi on 3/26/23.
//

import SwiftUI

struct MailView: View {
    
    @StateObject var viewModel = MailViewModel()
    
    var body: some View {
        WrapperViewController(viewController: viewModel.mailViewController)
    }
}

struct MailView_Previews: PreviewProvider {
    static var previews: some View {
        MailView()
    }
}
