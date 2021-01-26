import Cocoa
//1. Реализовать свой тип коллекции очередь (queue) c использованием дженериков.
struct Queue<T> {
    private var array: [T] = []
    mutating func append(newVal: T) {
        array.append(newVal)
    }
    mutating func value() -> T? {
        if array.count < 1 {
            return nil
        }
        let val = array[0]
        array.remove(at: 0)
        return val
    }
    subscript(index: Int) -> T {
        return array[index]
    }
}
var intArr = Queue<Int>()
intArr.append(newVal: 5)
intArr.append(newVal: 3)
intArr.append(newVal: 67)
if let val = intArr.value() {
    print(val)
}
if let val = intArr.value() {
    print(val)
}
//2. Добавить ему несколько методов высшего порядка полезных для этой коллекции (пример: filter для массивов)
