import UIKit

//MARK: - Practice
/*
Напишите generic:
●Функцию, принимающую два параметра и меняющую местами их значения
●Функцию, принимающую два параметра и возвращающую typle с ними же
●Функцию сложения, которая принимает два параметра и возвращает
их сумму
●Тип, который содержит свойство - Dictionary с данными. Напишите функции,
которые добавляют в этот словарь значение по ключу и достают значение по ключу
*/

/* 1
 Напишите generic:
 Функцию, принимающую два параметра и меняющую местами их значения
 */

func swapValues<T>(value1: inout T, value2: inout T) {
    let storage = value1
    value1 = value2
    value2 = storage
}

/* 2
 Функцию, принимающую два параметра и возвращающую typle с ними же
 */

func returnTuple<T>(value1: T, value2: T) -> (T, T) {
    (value2, value1)
}

/* 3
 Функцию сложения, которая принимает два параметра и возвращает их сумму
 */

protocol Summable {
    static func +(val1: Self, val2: Self) -> Self
}

extension Int: Summable{
    
}
extension String: Summable {
    
}
extension Double: Summable {
    
}
extension Float: Summable {
    
}

func genericSum<T: Summable>(value1: T, value2: T) -> T {
    value1 + value2
}
let test = genericSum(value1: "30", value2: "13")

/* 4
 Тип, который содержит свойство - Dictionary с данными. Напишите функции,
 которые добавляют в этот словарь значение по ключу и достают значение по ключу
 */

struct GenericDict<T: Hashable, D> {
    var dict: Dictionary<T, D> = [:]
    
    mutating func addKeysAndValues(key: T, value: D) -> [T:D] {
        dict[key] = value
        return dict
    }
    mutating func accessToValue(key: T) -> D? {
        dict[key]
    }
}

var testDict = GenericDict<Int, Int>()
testDict.addKeysAndValues(key: 1, value: 2)

testDict.accessToValue(key: 1)

/*
 В Swift нет такого множества, как stack и linked list. Но вы их можете реализовать.
 Поищите в интернете информацию о том как они работают и напишите их как generic типы.
 Существующие множества в swift уже написаны через generic типы, так что вы можете почувствовать себя соавтором свифта ;)
 */

struct Stack<T> {
    var iteams: Array<T> = []
    var isEmpty: Bool { return iteams.isEmpty }
    var count: Int { return iteams.count }
    
    func peek() -> T? {
        guard let topElement = iteams.last else {
            return nil
        }
        return topElement
    }
    mutating func push(_ elemenent: T) {
        iteams.append(elemenent)
    }
    mutating func pop() -> T? {
        return iteams.popLast()
    }
}

var myFirstStack = Stack<String>()
myFirstStack.isEmpty
myFirstStack.count
myFirstStack.peek()
myFirstStack.push("Gena")
myFirstStack.push("Petya")
myFirstStack.push("Vasilii")
myFirstStack.peek()
myFirstStack.pop()
