import Cocoa
//1. Придумать класс методы, которого могут создавать непоправимые ошибки. Реализовать их с помощью try/catch.
func isOdd(val: Int) -> Bool {
    return val % 2 == 0
}
enum OddErrors :Error {
    case notOdd
}
struct OddValues {
    var array: Array<Int> = []
    mutating func append(val: Int) throws {
        guard isOdd(val: val) else {
            throw OddErrors.notOdd
        }
        array.append(val)
    }
}
var arr = OddValues()

do {
    try arr.append(val: 4)
} catch OddErrors.notOdd {
    print("new value isn't odd")
}

do {
    try arr.append(val: 5)
} catch OddErrors.notOdd {
    print("absolutely new value isn't odd")
}
//2. Придумать класс методы которого могут завершаться неудачей. Реализовать их с использованием Error.


