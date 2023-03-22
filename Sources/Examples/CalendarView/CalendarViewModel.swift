//
//  CalendarViewModel.swift
//  
//
//  Created by Kostiantyn Nevinchanyi on 3/22/23.
//

import UIKit
import SwiftUI

class CalendarViewModel: NSObject, ObservableObject {
    
    let calendarView = UICalendarView()
    
    override init() {
        super.init()
        let multiSelect = UICalendarSelectionMultiDate(delegate: self)
        
        calendarView.delegate = self
        calendarView.selectionBehavior = multiSelect
        calendarView.calendar = Calendar(identifier: .gregorian)
        calendarView.tintColor = .systemMint
        calendarView.availableDateRange = DateInterval(start: Date.now, duration: 1000000)
        calendarView.isMultipleTouchEnabled = true
    }
}

extension CalendarViewModel: UICalendarViewDelegate {
    func calendarView(_ calendarView: UICalendarView, didChangeVisibleDateComponentsFrom previousDateComponents: DateComponents) {
        print(previousDateComponents)
    }
}

extension CalendarViewModel: UICalendarSelectionMultiDateDelegate {
    func multiDateSelection(_ selection: UICalendarSelectionMultiDate, didSelectDate dateComponents: DateComponents) {
        print("--> did select date:", dateComponents)
    }

    func multiDateSelection(_ selection: UICalendarSelectionMultiDate, didDeselectDate dateComponents: DateComponents) {
        print("--> did deselect date:", dateComponents)
    }
}
