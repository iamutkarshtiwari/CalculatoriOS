//
//  Calculation.swift
//  Calculator Layout iOS13
//
//  Created by Ütkarsh Tiwari on 2022/10/09.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

class CalculationImpl: Calculation, Operations {
    var displayLabel: String?
    var expression: String?
    
    let onDisplayLabelChanged: (String) -> ()
    
    init(onDisplayLabelChanged: @escaping (String) -> ()) {
        self.onDisplayLabelChanged = onDisplayLabelChanged
        self.allClear()
    }
    
    func negate() {
        print("negate")
    }
    
    func add() {
        print("add")
    }
    
    func substract() {
        print("substract")
    }
    
    func multiply() {
        print("multiply")
    }
    
    func divide() {
        print("divide")
    }
    
    func allClear() {
        self.expression = ""
        self.displayLabel = "8"
        self.onDisplayLabelChanged(displayLabel!)
    }
    
    func modulo() {
        
    }
    
    func equals() {
        
    }
    
    func decimal() {
        
    }
    
    func applyDigit(digit: String) {
        expression += digit
    }
    
    func parseAction(label: String) {
        switch label {
            case "+":
                add()
            case "-":
                substract()
            case "":
                divide()
            case "×":
                multiply()
            case "=":
                equals()
            case "%":
                modulo()
            case "+/-":
                negate()
            case "AC":
                allClear()
            case ".":
                decimal()
            case "÷":
                divide()
            default:
                applyDigit(digit: label)
        }
    }
}

protocol Calculation {
    
    mutating func parseAction(label: String)
}

private protocol Operations {
    var expression: String? { get set }
    var displayLabel: String? { set get }
    
    mutating func negate()
    mutating func add()
    mutating func substract()
    mutating func multiply()
    mutating func divide()
    mutating func allClear()
    mutating func modulo()
    mutating func equals()
    mutating func decimal()
    mutating func applyDigit(digit: String)
}
