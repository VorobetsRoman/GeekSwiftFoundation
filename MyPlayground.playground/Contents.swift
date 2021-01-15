import Cocoa
//1. Описать несоклько структур - любой легковой автомобиль и любой грузовик
//2. Структуры должны содеражть марку авто, год выпуска, объем багажника/кузова, состояние запущен ли двигатель, открыты ли окна? заполненный объем багажника.

enum BodyType {
    case Truck, Limo, Seddan, Suv
}

struct Car {
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
    mutating func setEngineOn(setOn: Bool) {
        engineIsOn = setOn
    }
    mutating func setWindowsOpen(setOpen: Bool) {
        windowsAreOpen = setOpen
    }
    mutating func addCargo(cargoSize: Float) -> Bool {
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

//3. Описать перечисление с возможными действиями с автомобилем - запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.
var str = "Hello, playground"
