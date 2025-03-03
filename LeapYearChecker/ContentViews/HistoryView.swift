//
//  Untitled.swift
//  LeapYearChecker
//
//  Created by Julien Hwang on 3/3/2025.
//

import SwiftUI

struct HistoryView: View {
    
    let leapHistoryView: LeapYearChecker
    
    var body: some View {
     
        Text("\(leapHistoryView.year) is \(leapHistoryView.Checker)")
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            
    }
}


