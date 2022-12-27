import UIKit
import Foundation
//MARK: - Practice
/*
●Создайте опциональные переменные типов String, Int, Bool, Float. Разверните (unwrap) их разными способами
●Создайте класс А, у которого будет опциональное свойство класса B. Пусть у класса B будет свойство “text” типа String. Создайте экземпляр класса B, задайте его свойству text значение. Создайте класс A и задайте его свойству значение только что созданного класса B
●Выведите в консоль значение text. Значение в консоли будет помечено как “optional” ●Разверните значение text разными способами и выведите в консоль (на этот раз пометка
“optional” должна исчезнуть)
*/

var someString: String? = nil
let someInt: Int? = 23
let someBoolean: Bool? = true
let someFloat: Float? = 3.14
someString = "Some Value"


if let someString = someString {
    print(someString)
}

func unwrapped() {
    guard let someString = someString else {
        return
    }
    print(someString)
}
 unwrapped()


if let someFloat {
    print(someFloat)
}

if let someBoolean = someBoolean {
    print(someBoolean)
}

let testInt = someInt ?? 0
print(testInt)


//●Создайте класс А, у которого будет опциональное свойство класса B. Пусть у класса B будет свойство “text” типа String. Создайте экземпляр класса B, задайте его свойству text значение. Создайте класс A и задайте его свойству значение только что созданного класса B

class A {
    var text: B?
    init(text: B?) {
        self.text = text
    }
}
   
class B {
    var text: String
    init(text: String) {
        self.text = text
    }
}
    
let valueTest1 = B(text: "Hello")
let valueTest2 = A(text: valueTest1)
    
    

//●Выведите в консоль значение text. Значение в консоли будет помечено как “optional” ●Разверните значение text разными способами и выведите в консоль (на этот раз пометка “optional” должна исчезнуть)


if let valueTest2 = valueTest2.text {
    print(valueTest2.text)
}

func unwrappedClassA() {
    guard let valueTest2 = valueTest2.text else {
        return
    }
    print(valueTest2.text)
}
unwrappedClassA()


print(valueTest2.text!.text)
