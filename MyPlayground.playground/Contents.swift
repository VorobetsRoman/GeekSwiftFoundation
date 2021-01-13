import Cocoa

//1. Написать функцию, которая определяет, четное число или нет

func isOdd(val: Int) -> Bool {
    if (val % 2 > 0) {
        return false
    } else {
        return true
    }
}

let odd = isOdd(val: 4)
let notOdd = isOdd(val: 5)
//2. Написать функцию, которая определяет, делится ли число без остатка на 3

func isDividedBy_3(val: Int) -> Bool {
    if (val % 3 > 0) {
        return false
    } else {
        return true
    }
}

let isTrue = isDividedBy_3(val: 27)
let isFalse = isDividedBy_3(val: 41)
//3. Создать возрастающий массив из 100 чисел
// Удалить из массива все четные числа и все числа, которые не делятся на 3

func createArray(size: Int) -> [Int] {
    var arr:[Int] = []
    for val in 1...size {
        arr.append(val)
    }
    return arr
}

func removeOddAnd_3(_arr: [Int]) -> [Int] {
    var arr = [Int]()
    for val in _arr where !isOdd(val: val) && !isDividedBy_3(val: val) {
        arr.append(val)
    }
    return arr
}

let arr = createArray(size: 100)
let resultArr = removeOddAnd_3(_arr: arr)
//4. Написать функцию, которая добавляет в массив новое число Фибоначчи и добавить при помощи нее 100 элементов (Fn = Fn1-1 + Fn-2)

var str = "Hello, playground"

//Old:
//1. Написать функцию, которая определяет четное число или нет.
func isOdd(val: Int) ->Bool  {
    return (val % 2) == 0
}
let odd:Bool = isOdd(val: 5)
print(odd)
//2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func divizibleOn3(val: Int) ->Bool {
    return (val % 3) == 0
}
let on3 = divizibleOn3(val: 15)
print(on3)
//3. Создать возрастающий массив из 100 чисел.
var array:[Int] = []// = Array(repeating: 0, count: 100)
var variable: Int = 0
for _ in 1...100 {
    variable += Int.random(in: 1...5)
    array.append(variable)
}
print("возрастающий массив из 100 чисел")
print(array)

//Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
for (index, item) in array.enumerated().reversed() {
    if (isOdd(val:item) || divizibleOn3(val:item)) {
        array.remove(at: index)
    }
}
print("массив без чётных и делящихся на 3")
print(array)

//4. * Написать функцию, которая добавляет в массив новое число Фибоначчи и добавить при помощи нее 100 элементов:
func addFibIntoArr(arr:[Int64]) ->[Int64] {
    var outArr = arr
    if arr.count > 1 {
        outArr.append(arr.last! + arr[arr.count - 2])
    } else {
        outArr.append(1)
    }
    return outArr
}

var fibArr:[Int64] = []
print(INT64_MAX)
for _ in 0...80 {
    fibArr = addFibIntoArr(arr: fibArr)
}
print(fibArr)
