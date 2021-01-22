import Cocoa

//1. Создать протокол Car и описать свойства, общие для автомобилей, а также метод действия.

protocol Car {
    var truncSize: Float {get set}
    func checkCargo(cargoSize: Float)
}
//2. Создать расширения для протокола Car и реализовать в нем методы конкретных действий с автомобилем - открыть/закрыть окно, запустить/заглушить двигатель и т.д. По одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей.
extension Car {
    func checkCargo(cargoSize: Float) {
        if cargoSize > truncSize {
            print("fuck")
        } else {
            print("yeah")
        }
    }
}
//3. Создать два класса, имплементирующих протокол Car - tunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
class TrunkCar: Car {
    var truncCapacity: Float = 300.0
    var cargoSize: Float = 0.0
    var truncSize: Float {
        get {
            return truncCapacity - cargoSize
        } set {
            cargoSize = truncCapacity - newValue
        }
    }
    
    init (){}
}
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
class PrintCar: TrunkCar, CustomStringConvertible {
    var description: String = "TruncCar"
    
}
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
var trunk:TrunkCar = TrunkCar()
trunk.checkCargo(cargoSize: 50)
var printable: PrintCar = PrintCar()
print(printable)
//6. Вывести сами объекты в консоль.



var str = "Hello, playground"
