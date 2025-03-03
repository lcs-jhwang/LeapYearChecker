//
//  Untitled.swift
//  LeapYearChecker
//
//  Created by Julien Hwang on 3/3/2025.
//

import Foundation

struct LeapYearChecker: Identifiable{
    let id = UUID()
    var year: Int
        
    var Checker: String {
        
        var leapOrNotYear = ""
        
        if (year%4) == 0 {
            leapOrNotYear = "Leap"
        } else {
            leapOrNotYear = "Oridinary"
        }
        return leapOrNotYear
    }
}
