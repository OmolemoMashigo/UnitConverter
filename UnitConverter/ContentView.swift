//
//  ContentView.swift
//  UnitConverter
//
//  Created by Omolemo Mashigo on 2024/10/29.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputSelection = "km"
    @State private var outputSelection = "km"
    
    @State private var inputLength: Double = 0
    
    let lenghths = ["km", "feet", "yards", "miles"]
    
    //KM conversions
    //1km = 3280.84ft
    //1km = 1093.61 yards
    //1km = 0.621371 miles divide value by 1.609
    
    //mile conversions
    //1mile = 1.60934 kms
    //1mile = 1760 yards
    //1mile = 5280 ft
    
    //yard conversions
    //1 yard = 0.0009143990856kms divide value by 1094
    //1 yard = 3ft multiply value by 3
    //1 yard = 0.00056818124999999993635 miles divide value by 1760
    
    //FT conversions
    //1ft = 0.0003048kms divide value by 3281
    //1ft = 0.333333 yards divide value by 3
    //1ft = 0.00018939375miles divide value by 5280
    
    var convertedLength: Double{
        var finalAmount: Double = 0
        
        if inputSelection == "km"{
            if outputSelection == "feet"{
                finalAmount = inputLength * 3280.84
            }
            
            else if outputSelection == "yards"{
                finalAmount = inputLength * 3280.84
            }
            
            else if outputSelection == "miles"{
                finalAmount = inputLength * 1093.61
            }
            return finalAmount
        }
        
        else if inputSelection == "feet"{
            if outputSelection == "km"{
                finalAmount = inputLength / 3281
            }
            
            else if outputSelection == "yards"{
                finalAmount = inputLength / 3
            }
            
            else if outputSelection == "miles"{
                finalAmount = inputLength / 5280
            }
            return finalAmount
        }
        
        else if inputSelection == "yards"{
            if outputSelection == "feet"{
                finalAmount = inputLength * 3
            }
            
            else if outputSelection == "km"{
                finalAmount = inputLength / 1094
            }
            
            else if outputSelection == "miles"{
                finalAmount = inputLength / 1760
            }
            return finalAmount
        }
        
        else if inputSelection == "miles"{
            if outputSelection == "feet"{
                finalAmount = inputLength * 5280
            }
            
            else if outputSelection == "yards"{
                finalAmount = inputLength * 1760
            }
            
            else if outputSelection == "km"{
                finalAmount = inputLength * 1.60934
            }
            return finalAmount
        }
        
        return 0
    }
    
    var body: some View {
        NavigationStack{
            Form{
                Section("input unit"){
                    Picker("input length", selection: $inputSelection){
                        ForEach(lenghths, id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                    
                    TextField("enter length", value: $inputLength, format: .number)
                }
                
                Section("output unit"){
                    Picker("input length", selection: $outputSelection){
                        ForEach(lenghths, id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                    
                    Text("\(convertedLength)" + " \(outputSelection)")
                }
            }.navigationTitle("Unit Converter")
        }
    }
}

#Preview {
    ContentView()
}
