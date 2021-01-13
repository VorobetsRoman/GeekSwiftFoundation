import Cocoa
// 1. Решить квадратное уравнение
let a: Double = 4.0
let b: Double = 20.0
let c: Double = 4.0

let d: Double = b * b - 4 * a * c

if d < 0 {
    let str = "unreal"
} else if d == 0 {
    let x = -b / 2 * a
} else if d > 0 {
    let x1 = (-b - sqrt(d)) / 2 * a
    let x2 = (-b + sqrt(d)) / 2 * a
}

//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

let kat1: Float = 3
let kat2: Float = 4

let area = kat1 * kat2 / 2
let perimeter = kat1 + kat2 + sqrt(kat1 * kat1 + kat2 * kat2)
let hypotenuse = sqrt(kat1 * kat1 + kat2 * kat2)

//3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет

let deposit: Float = 1000
let percent: Float = 1.05
let time: Float = 5
let result = deposit * pow(percent, time)

var str = "Hello, playground"
