//
//  UnitConversion.swift
//  HackingWithSwiftUI
//
//  Created by Shakhnoza Mirabzalova on 12/29/22.
//

import Foundation
import SwiftUI
import CoreData

struct unitConversion: View {
    @State private var inputNumber = 0.0
    @State private var inputTemp = "Fahrenheit"

    let temperatureSelection = ["Fahrenheit", "Celsius"]
    
    
    var convertedTemp: Double {
        let fahToCel = inputNumber - 32 * 0.5556
        let celToFah = inputNumber * 1.8 + 32
        let tempResult = inputTemp == "Fahrenheit" ? fahToCel : celToFah
        
        return tempResult
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Hello", value: $inputNumber, format:
                            .number)
                    Picker("Choose Unit", selection: $inputTemp) {
                        ForEach(temperatureSelection, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section {
                    Text(inputTemp == "Fahrenheit" ? "Celsius" : "Fahrenheit")
                    Text(convertedTemp, format: .number)
                }
            }
            
        }
    }
}

struct unitConversion_Previews: PreviewProvider {
    static var previews: some View {
        unitConversion()
    }
}
