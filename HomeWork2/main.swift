//
//  main.swift
//  HomeWork2
//
//  Created by Павел on 18.07.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import Foundation



// пробовал создавать массивы по разному
var array = [Int] (0...100)
array.sort()
print(array)

var arrayTwo = (0...100).map{_ in Int(arc4random_uniform(1000))}
arrayTwo.sort()
print(arrayTwo)



// чистим массив! как одну функцию приметить к двум разным массивам?
func formatArray(Array: [Int]) -> [Int] {
    var tempArray = [Int]()
    for i in array {
        if i % 2 != 0 && i % 3 != 0{
            tempArray.append(i)
        }
    }
    return tempArray
}
array = formatArray(Array: array)
print(array)

// просто эксперимент
let arrayThree = arrayTwo.filter{ $0 % 2 != 0 && $0 % 3 != 0 }
print(arrayThree)


//проба фибоначчи
var fibonacciArray = [Int] ()
func fibonacci(n: Int) -> [Int] {
   
    var arrayFib = [0, 1]
    while arrayFib.count < n {
        arrayFib.append(arrayFib[arrayFib.count - 1] + arrayFib[arrayFib.count - 2])
    }
    return arrayFib
}

fibonacciArray = fibonacci(n: 50)
print(fibonacciArray)
