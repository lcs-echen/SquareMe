//
//  CalculationView.swift
//  SquareMe
//
//  Created by Evelyn Chen on 2023-02-02.
//

import SwiftUI

struct CalculationView: View {
    // MARK: Stored Properties
    @State var inputGiven: String = ""
    // MARK: Computed Properties
    
    // Step 2
    // Convert the input given into an optional Double
    var inputGivenAsOptionalDouble: Double? {
        guard let inputDouble = Double(inputGiven) else {
            return nil
        }
        return inputDouble
    }
    // Step 3
    // Take the input and format it for output
    var formattedOutputValue: String {
        guard let numberToSquare = inputGivenAsOptionalDouble else {
            return "Please enter a numeric value such as: 5.0"
        }
        let squaredNumber = numberToSquare * numberToSquare
        
        // Step 4
        return squaredNumber.formatted(.number.precision(.fractionLength(2)))
    }
    var body: some View {
        VStack {
            VStack (alignment: .center){
                // Step 1
                TextField("5.5", text: $inputGiven)
                    .font((.largeTitle))
                    .padding(.leading, 30)
                    .padding(.top, 30)
                Text(formattedOutputValue)
                    .font(.largeTitle)
            }
            .navigationTitle("Square Me")
            
            Spacer()
        }
    }
   
}

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CalculationView()
        }
       
    }
}
