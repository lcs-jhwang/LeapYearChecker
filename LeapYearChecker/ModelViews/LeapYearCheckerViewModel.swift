//
//  LeapYearCheckerViewModel.swift
//  LeapYearChecker
//
//  Created by Julien Hwang on 3/3/2025.
//

import Foundation

@Observable
class LeapYearCheckerViewModel {
    //MARK: Stored properties
    var providedYear: String
    
    var recoverySuggestion: String = ""
    
    var leapYearChecker: LeapYearChecker?{
        guard let year = Int(providedYear) else {
            recoverySuggestion = "Please provide a intergal value"
            return nil
        }
        
        recoverySuggestion = ""
        
        return LeapYearChecker(year: year)
        
    }
    

    
    init(providedYear: String = "",
         recoverySuggestion: String = ""
    ){
        self.providedYear = providedYear
        self.recoverySuggestion = recoverySuggestion
    }
}
