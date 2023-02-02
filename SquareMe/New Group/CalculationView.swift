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
    
    // Convert the input given into an optional Double
    var inputGivenAsOptionalDouble: Double? {
        guard let inputDouble = Double(inputGiven) else {
            return nil
        }
        return inputDouble
    }
    var body: some View {
        VStack {
            VStack {
                TextField("5.5", text: $inputGiven)
                    .font((.largeTitle))
                    .padding()
            }
            .navigationTitle("Square Me")
            
            
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
