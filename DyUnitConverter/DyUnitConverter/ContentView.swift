//
//  ContentView.swift
//  DyUnitConverter
//
//  Created by Dylan Balagtas on 4/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var amountToConvert = 0.0
    @State private var unitConverted = "kilometers"
    @State private var unitToConvert = "meters"
    
    var body: some View {
        let conversionChoices = ["meters", "kilometers", "feet", "yards", "miles"]
        
        var converted:Double {
            var temp = 0.0
            temp = amountToConvert
            if unitToConvert == "meters" && unitConverted == "kilometers"{
                temp = temp / 1000
            }else if unitToConvert == "kilometers" && unitConverted == "meters"{
                temp = temp * 1000
            }
            return temp        }
        
        
        NavigationStack{
            Form{
                Section("Initial Amount"){
                    TextField("Amount to Convert", value: $amountToConvert, format: .number)
                        .keyboardType(.decimalPad)
                    Picker("Select a unit", selection: $unitToConvert){
                        ForEach(conversionChoices, id: \.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                Section("LBS"){
                    Text(converted, format: .number)
                    Picker("Select a unit", selection: $unitConverted){
                        ForEach(conversionChoices, id: \.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
            }
        }
        
    }
}


#Preview {
    ContentView()
}
