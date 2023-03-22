//
//  SwiftUIView.swift
//  
//
//  Created by Kostiantyn Nevinchanyi on 3/22/23.
//

import SwiftUI

struct CalendarView: View {
    
    @StateObject var viewModel = CalendarViewModel()
    
    var body: some View {
        WrapperView(view: viewModel.calendarView)
            .frame(height: 400)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
