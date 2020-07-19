//
//  main.swift
//  2l_FilippovDenis
//
//  Created by Denis Filippov on 18/07/2020.
//  Copyright © 2020 Denis Filippov. All rights reserved.
//

import Foundation

// первая программа (определяем четное ли число)


func calculateEven(value: Int) {
    let a = value
    let b = a%2
    _ = b == 0 ? print("even") : print("odd")
}

calculateEven(value: 100)


// вторая программа (определяем нечетное число)


func calculateodd(value: Int) {
    let a = value
    let b = a%3
    _ = b == 0 ? print("odd") : print("even")
}

calculateodd(value: 99)

// третья программа (массив)

var array = [Int]()     //создали массив
var m = 0               //задаем начало массива

while m<100 {           //задаем конец массива с помощью цикла while
    array.append(m+1)   //  тело цикла
    m += 1              // аналог m=m+1
}
print(array)            // печеть массива

// четвертая программа

var toDelete = array.filter {$0 % 2 != 0 && $0 % 3 == 0}
print(toDelete)


// пятая программа

func fibonacci(f: Int) -> (Double) {
    if (f < 3) {
        return 1
    } else {
        var Fn1 = 1.0, Fn2 = 1.0, z:Double
        for _ in 3...f {
            z = Fn1+Fn2
            Fn1 = Fn2
            Fn2 = z
        }
        return Fn2
    }
}

var fibArray = [Double]()
fibArray.append(0)
var f  = 100
for i in 1...f {
    fibArray.append(fibonacci(f: i))
}
print(fibArray)



// шестая программа


func primeNumbers(arrayPassed: [Int]) -> [Int] {
    var prime: [Int] = []
    var newArr = arrayPassed
    while let newP = newArr.first {
        prime.append(newP)
        newArr = newArr.filter { $0 % newP != 0 }
    }
    return prime
}
print(primeNumbers(arrayPassed: Array(2...100)))

