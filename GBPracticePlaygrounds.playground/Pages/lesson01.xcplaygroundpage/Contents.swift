import UIKit
//1. Сложить две дроби между собой.
//Решение:
let number1 = 0.5
let number2 = 1

let result: Double = number1 + Double(number2)

//2. Есть переменная типа  Int,  и в ней записано семизначное число. Нужно поменять местами первую и последнюю цифры.
//Решение:
let number = 1234567
var numberStringRepresentation = String(number)

let firstCharacter = numberStringRepresentation.removeFirst()
let lastCharacter = numberStringRepresentation.removeLast()
let result2 = String(lastCharacter) + numberStringRepresentation + String(firstCharacter)

