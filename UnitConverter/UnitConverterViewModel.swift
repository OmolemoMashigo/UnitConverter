//
//  UnitConverterViewModel.swift
//  UnitConverter
//
//  Created by Omolemo Mashigo on 2024/10/30.
//

import Foundation

class UnitConverterViewModel: ObservableObject{
    
    @Published  var inputSelection = "km"
    @Published  var outputSelection = "km"
    
    @Published  var inputLength: Double = 0
    
    let lenghths = ["km", "feet", "yards", "miles"]
    
    var convertedLength: Double{
        return lengthUnitConverter()
    }
    
    func lengthUnitConverter()->Double{
        var finalAmount: Double = 0
        
        if inputSelection == "km"{
            if outputSelection == "feet"{
                finalAmount = inputLength * 3280.84
            }
            
            else if outputSelection == "yards"{
                finalAmount = inputLength * 3280.84
            }
            
            else if outputSelection == "miles"{
                finalAmount = inputLength / 1.609
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
}
