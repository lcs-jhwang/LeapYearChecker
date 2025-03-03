//
//  ContentView.swift
//  LeapYearChecker
//
//  Created by Julien Hwang on 3/3/2025.
//

import SwiftUI

struct LeapYearCheckerView: View {
    
    @State var viewModel = LeapYearCheckerViewModel()
    
    var body: some View {
        
        VStack {
            Spacer()
            if let leapYearChecker = viewModel.leapYearChecker{
                HStack{
                Text("the year is \(leapYearChecker.Checker)")
                }

                
           
            } else {
                ContentUnavailableView("Unable to evaluate", systemImage: "gear.badge.questionmark" , description: Text("\(viewModel.recoverySuggestion)"))
            }
            
            TextField("Input the year here", text: $viewModel.providedYear)
                .padding(5)

            Button {
                viewModel.savedResult()
                // DEBUG: Show how many items are in the resultHistory array
                print("There are \(viewModel.resultHistory.count) elements in the resultHistory array.")
            } label: {
                Text("Save")
            }
            .buttonStyle(.borderedProminent)
            .padding(.bottom)
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    LeapYearCheckerView()
}
