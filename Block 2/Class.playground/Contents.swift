import UIKit


//MARK: Practice
/*
 ● Создайте класс Phone, который содержит переменные number, model и weight
 ● Создайте 2 экземпляра этого класса и выведите в консоль значения их свойств
 ● Добавьте в класс Phone методы:
 ○ receiveCall – имеет один параметр – имя звонящего. Выводит на консоль
 сообщение “Звонит \(name)”
 ○ getNumber – возвращает номер телефона
*/

class Phone {
    var number: Int
    var model: String
    var weight: Int
    init (number: Int, model: String, weight: Int) {
        self.number = number
        self.model = model
        self.weight = weight
        
    }
    convenience init() {
        self.init(number: 0, model: "", weight: 0)
    }
    func receiveCall(name: String) {
        print("a call from \(name)")
    }
    func getNumber() -> Int {
        print("Use func getnumber() -> \n<-Value = \(number)")
        return self.number
        
    }
}

var nokia = Phone(number: 15, model: "SUPER", weight: 500)

var hp = Phone()
var lenovo = Phone()

var iPhone = Phone()
iPhone.weight = 120
iPhone.model = "Iphone"
iPhone.number = 14

var samsung = Phone()
samsung.weight = 200
samsung.model = "Galaxy"
samsung.number = 26
print("Weight my phone: \(iPhone.weight), \nmodel my phone: \(iPhone.model), \nNumber my phone: \(iPhone.number)")

print("Weight my phone: \(samsung.weight), \nmodel my phone: \(samsung.model), \nNumber my phone: \(samsung.number)")

let arrayPhone = [hp, lenovo]
for i in arrayPhone {
    i.number = 12
    i.model = "2gdr"
    i.weight = 235
    print(hp.weight, hp.model, hp.number)
    print(lenovo.weight, lenovo.model, lenovo.number)

}

var testReceiveCall = Phone()
testReceiveCall.receiveCall(name: "Max")


var testGetNumber = Phone(number: 88005553535, model: "None", weight: 10000)

testGetNumber.getNumber()
