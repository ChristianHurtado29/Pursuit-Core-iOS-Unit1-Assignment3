//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
if 
  switch opString {
  case "+":
    return {x, y in x + y }
  case "-":
    return {x, y in x - y }
  case "*":
    return {x, y in x * y }
  case "/":
    return {x, y in x / y }
  default:
    return {x, y in x + y }
  }
}

let closureOperation = mathStuffFactory(opString: "+")

let result = closureOperation(45, 5)

print("Welcome to Christian's Calculator")
print("What's special about it? Nothing, it literally does the same thing as all the others.")
print("Go ahead, try something!")

print("math?")

var temp1:Double = 0
var temp2:Double = 0
var sign:String = ""

func calculateOperation(str: String) -> Double {
   let userEntryArr = str.components(separatedBy: " ")
   if userEntryArr.count != 3 { // 0, 1, 2
       return 0.0
   }
   let num1 = Double(userEntryArr[0]) ?? 0.0
   let num2 = Double(userEntryArr[2]) ?? 0.0
    temp1 = num1
    temp2 = num2
   let operatorSymbol = userEntryArr[1] //+, -, *, /
   let operationClosure = mathStuffFactory(opString: operatorSymbol)
   let result = operationClosure(num1, num2)
    sign = operatorSymbol

   return result
}

let userEntry = readLine() ?? " "
let resultCalculation = calculateOperation(str: userEntry)
print(resultCalculation)

//print("\(temp1) \(sign) \(temp2) = \(resultCalculation)")
