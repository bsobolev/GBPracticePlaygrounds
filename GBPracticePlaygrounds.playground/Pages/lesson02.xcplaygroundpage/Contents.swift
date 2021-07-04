import UIKit

//Задача 1. Создать массив из 10 элементов:
//Решение:
var testArray: [Int] = []
for i in 0...9 {
    testArray.append(i)
}
print(testArray)

//Задача 2. Сделать все элементы этого массива четными.
//Решение:
for (index, value) in testArray.enumerated() {
    if (value % 2) > 0 {
        testArray[index] += 1
    }
}
print(testArray)

//Задача 3
//Удалить из исходного массива все нечетные элементы.
//Решение:
for value in testArray {
    if (value % 2) != 0 {
        testArray.remove(at: testArray.firstIndex(of: value)!)
    }
}


print(testArray)
