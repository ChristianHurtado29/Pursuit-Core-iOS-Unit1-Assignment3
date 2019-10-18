//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

print("Simple Calculator, enter 'a'. High order function, enter 'b'")
var userCalc = readLine()

if userCalc == "a"{
func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
//    print(opString)
//    if opString == "?" {
//        var opStringArr = ["+", "-", "*", "/"].randomElement() ?? ""
//        print("Print here \(opStringArr)")
//        let randomOp = mathStuffFactory(opString: opStringArr)
        
        //print("Can you guess what operation it was?")
//    }
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
//let closureOperation = mathStuffFactory(opString: "+")
//
//let result = closureOperation(45, 5)

print("Welcome to Christian's Calculator")
print("What's special about it? Nothing, it literally does the same thing as all the others.")
print("Go ahead, try something!")

print("math?")

var temp1:Double = 0
var temp2:Double = 0
var sign:String = ""


// reg calc
func calculateOperation(str: String) -> Double {
   let userEntryArr = str.components(separatedBy: " ")
   if userEntryArr.count != 3 { // 0, 1, 2
       return 0.0
   }
   // var opStringArr = opString.components(separatedBy: " ")
    

    
   let num1 = Double(userEntryArr[0]) ?? 0.0
   let num2 = Double(userEntryArr[2]) ?? 0.0
    temp1 = num1
    temp2 = num2
    var operatorSymbol = userEntryArr[1] //+, -, *, /
    print("currently it is \(userEntryArr[1])")
    
    var result: Double = 0.0
    
    if userEntryArr[1] == "?" {
    let operators = ["+", "-", "*", "/"].randomElement() ?? ""
        operatorSymbol = operators
        let operationClosure = mathStuffFactory(opString: operatorSymbol)
         result = operationClosure(num1, num2)
         sign = operatorSymbol
    print("Can you guess what operation it was based on the result below.")
        print(result)
    let userCharGuess = readLine()
        if operators == userCharGuess{
            print("good job!")
        }
    } else {
        let operationClosure = mathStuffFactory(opString: operatorSymbol)
            result = operationClosure(num1, num2)
    }
    
    
   return result
}
let userEntry = readLine() ?? " "
let resultCalculation = calculateOperation(str: userEntry)
print("\(userEntry) = \(resultCalculation)")

//print("\(temp1) \(sign) \(temp2) = \(resultCalculation)")
//
print("Now let's play a game!")

print("I invite you to instead of our standard normal operators(+,-,*,/)")
print("enter a math equation that goes (number ? numer)")
print("we'll only reveal the answer and you'll have to guess which operator it was!")


let mysteryGuess = readLine() ?? " "
calculateOperation(str: mysteryGuess)

let mysteryResult = mathStuffFactory(opString: "?")
} else if userCalc == "b" {

print("Welcome to High Order Functions!")
    print("please choose between filter, map, or reduce and enter your array of numbers")
print("e.g - filter 1,2,3,4,5,6,7,8 by < 3")
    
// FILTER FUNCTION
func filterFunc(arr:[Double], closure:(Double)-> Bool) -> [Double]{
    var filterResults = [Double]()
    for num in arr {
    if closure(num) {
        filterResults.append(num)
        }
    }
    return filterResults
}

   // func mapFunc {
        
    }

