//
//  main.swift
//  Calculator-Project
//
//  Created by Liana Norman on 7/21/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import Foundation








func greetingAndInput(message: String) -> String {
    print(message)
    let input: String = readLine()!
    if input == "" {
        return greetingAndInput(message: "I did not get that, try again")
    } else {
        return input
    }
}

let input = greetingAndInput(message: "Enter your calculations using operators + = add, - = subtract, * = multiply and / = division. Example: 5 + 3. Then press enter")


var usersCalculation = input.components(separatedBy: " ")

var num1 = Double(usersCalculation[0])
var num2 = Double(usersCalculation[2])
var op = usersCalculation[1]
var realNum1 = Double()
var realNum2 = Double()

if let unwrappednum1 = num1 {
    realNum1 = unwrappednum1
}
if let unwrappednum2 = num2 {
    realNum2 = unwrappednum2
}


var operations: ([String: (Double, Double) -> Double]) = ["+": { $0 + $1 },
                                                          "-": { $0 - $1 },
                                                          "*": { $0 * $1 },
                                                          "/": { $0 / $1 }]

for (key, value) in operations {
    if op == key {
        print("\(input) = \(value(realNum1, realNum2))")
    }
}



