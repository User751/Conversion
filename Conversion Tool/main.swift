//
//  main.swift
//  Conversion Tool
//
//  Created by Will Laxson on 3/21/18.
//  Copyright © 2018 Will Laxson. All rights reserved.
//

import Foundation

//This program will convert fahrenheit to celsius or viceversa with an interactive menue.
//



func convertFtoC(F: Double) -> Double {
    return (F - 32 ) * 5/9
}


func convertCtoF(C: Double) -> Double {
    return (C * 9/5) + 32
}

func getUserTemp() -> Double? {
    print("What temperature do you want to convert? ", terminator: "")
    let userTemp = readLine()
    if let temp = userTemp {
        return Double(temp)
    } else {
        return nil
    }
}

// Show a menu with three options to the user
//  F to C
//  C to F
//  Quit Program
//Ask for input
//  After selecting one of the three option other than quit, ask for a number
//  Calculate and show result
//  Go back to menu



print("(1) Convert F to C")
print("(2) Convert C to F")
print("(3) Quit Program")
print("Make a decision:>> ", terminator: "")


let userSelection = readLine()


if userSelection == "1" {
    print("selected F to C")
    let userF = getUserTemp()
    if let temp = userF {
        let result = convertFtoC(F: temp)
        print("Your answer is \(result)°C")
    } else {
        print("That is not a number")
    }
} else if userSelection == "2" {
    print("selected C to F")
    let userC = getUserTemp()
    if let temp = userC {
        let result = convertCtoF(C: temp)
        print("Your answer is \(result)°F")
    } else {
        print("That is not a number")
    }
} else if userSelection == "3" {
    print("goodbye")
} else {
    print("input not received, please try again")
    
    
}
