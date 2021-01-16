import Cocoa

// 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия.
// 2. Описать пару его наследников tunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
// 3. В каждом подклассе реализовать метод действия с автомобилем в соответствии с его классом.
// 4. Создать несколько объектов каждого класса. Применить к ним различные действия.
// 5. Вывести значения свойств экземпляров в консоль.
enum BodyType {
    case Truck, Limo, Seddan, Suv
}

class Car {
    var brand: String
    var manufactured: Int
    var truncSize: Float
    var enginePower: Int = 270
    var bodyType: BodyType = .Suv
    var windowsAreOpen: Bool = false
    var truncsFilling: Float = 0 ///< Наполнение
    var engineIsOn: Bool = false
    
    init( _brand: String, _manufactured: Int, _truncSize: Float ) {
        self.brand = _brand
        self.manufactured = _manufactured
        self.truncSize = _truncSize
    }
    func setEngineOn(setOn: Bool){
    }
}

class TruncCar: Car {
    var
}
class SportCar: Car {
        
}
    func setEngineOn(setOn: Bool) {
        engineIsOn = setOn
    }
    func setWindowsOpen(setOpen: Bool) {
        windowsAreOpen = setOpen
    }
    func addCargo(cargoSize: Float) -> Bool {
        let cargo = cargoSize + truncsFilling
        if cargo > truncSize {
            return false
        } else {
            truncsFilling = cargo
            return true
        }
    }
}

var neighbours = Car(_brand: "Porsche", _manufactured: 2017, _truncSize: 300)
neighbours.setEngineOn(setOn: true)
print(neighbours.engineIsOn)
print(neighbours.enginePower)

var str = "Hello, playground"
