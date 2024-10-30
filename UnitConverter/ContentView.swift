//
//  ContentView.swift
//  UnitConverter
//
//  Created by Omolemo Mashigo on 2024/10/29.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var lengthConverter = UnitConverterViewModel()
    
    var body: some View {
        NavigationStack{
            Form{
                Section("input unit"){
                    Picker("input length", selection: $lengthConverter.inputSelection){
                        ForEach(lengthConverter.lenghths, id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                    
                    TextField("enter length", value: $lengthConverter.inputLength, format: .number)
                }
                
                Section("output unit"){
                    Picker("input length", selection: $lengthConverter.outputSelection){
                        ForEach(lengthConverter.lenghths, id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                    let roundedValue = round(lengthConverter.convertedLength * 100) / 100
                    Text("\(roundedValue) \(lengthConverter.outputSelection)")
                }
            }.navigationTitle("Unit Converter")
        }
    }
}

#Preview {
    ContentView()
}
