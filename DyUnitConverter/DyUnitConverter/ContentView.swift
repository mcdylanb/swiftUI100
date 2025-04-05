//
//  ContentView.swift
//  DyUnitConverter
//
//  Created by Dylan Balagtas on 4/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var unitToConvert = 0.0
    @State private var unitConverted = 0.0
    var body: some View {
        var kg2Lbs:Double {
            return unitToConvert * 2.20462
        }
        NavigationStack{
            Form{
                Section("KG"){
                    TextField("Amount to Convert", value: $unitToConvert, format: .number)
                        .keyboardType(.decimalPad)
                }
                Section("LBS"){
                    Text(kg2Lbs, format: .number)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
