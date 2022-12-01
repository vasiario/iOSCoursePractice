import UIKit


//MARK: - 1. Создайте класс Матрос (Sailor), в котором будет инициализатор, одно свойство - имя матроса и один метод "introduceMyself". При вызове этого метода, в консоль будет выводиться сообщение "Привет, меня зовут *имя матроса*!"

class Sailor {
    var nameSailor: String
    func introduceMyself() {
        print("Hello, my name is \(nameSailor)")
    }
    init(nameSailor: String) {
        self.nameSailor = nameSailor
    }
    convenience init() {
        self.init(nameSailor: "")
    }
}

let sailor = Sailor()
sailor.nameSailor = "Vanya"
//print(sailor.nameSailor)

//sailor.introduceMyself()


//MARK: - Создайте класс Корабль, в котором будет инициализатор, два свойства: название корабля и массив “матросы”. Добавьте также функцию "introduceAll", которая будет выводить приветствие от имени всех матросов, после чего выводить сообщение "Мы с корабля *имя корабля*"

class Ship {
    var nameShip: String
    var sailorsArray: [String]
    func introduceAll() {
        for (_, sailorsArray) in sailorsArray.enumerated() {
            print("Hello, my name is \(sailorsArray)")
        }
    }
    init(nameShip: String, sailorsArray:[String]) {
        self.nameShip = nameShip
        self.sailorsArray = sailorsArray
    }
    convenience init() {
        self.init(nameShip: "", sailorsArray:[""])
}

}




//MARK: - 3. Через инициализатор создайте 5 экземпляров класса Матрос и класс Корабль, в который передайте список созданных матросов. Вызовите функцию introduceAll. Вы должны получить в консоли приветствие от имени всех матросов и название корабля

let exemplar = Ship()
exemplar.sailorsArray = ["Petyshan", "Gena", "Oleg", "Leha", "Pitya"]
exemplar.nameShip = "Severostal"
//exemplar.introduceAll()



//MARK: - 4. Создайте класс Titanic, наследник класса Ship. И класс TitanicSeilor, наследник Seilor. Пусть TitanicSeilor будет иметь ту же функцию introduseMyself, но сообщение будет выводить на английском. Аналогично класс Titanic, только пусть его функция introduceAll выводит в на двух языках: то же сообщение что и Ship, а после - такое же сообщение на английском. Не меняйте существующие классы Ship и Seilor
 
class Titanic: Ship {
    override func introduceAll() {
        print("Hello, my name is \(sailorsArray)")
        print("ENGHello, my name is \(sailorsArray)")
    }
}

class TitanicSeilor: Sailor {
    override func introduceMyself() {
            print("ENG - Hello, my name is \(nameSailor)")
    }
}
//let test = TitanicSeilor()
//test.introduceMyself()
//let test2 = Titanic()
//test2.introduceAll()



//MARK: - 5. Создайте класс Calculator, с функциями + - * /. Создайте класс CalculatorPro, который будет также вычислять процент от числа и возводить число в степен/

class Calculator {
    
    func add(a: Double, b: Double) -> Double {
        a + b
    }
    
    func subtract(a: Double, b: Double) -> Double {
        a - b
    }
    
    func multiply(a: Double, b: Double) -> Double {
        a * b
    }
    
    func divide(a: Double, b: Double) -> Double {
        a / b
    }
}

class CalculatorPro: Calculator {
    
    func degree(a: Double, degree b: Double) -> Double {
        pow(a, b)
    }
    
    func residue(a: Int, b: Int) -> Int {
        return a/100*b
    }
}
//let test = CalculatorPro()
//test.residue(a: 2, b: 30)

//MARK: - 6. Создайте функцию которая принимает 1 параметр, процент заряда батареи. Пусть функция вернет сообщения для пользователя в зависимости от этого процента:
/*● если 100%: “Устройство заряжено”,
● если 70-80%, “Необходимо зарядить устройство в течении 6 часов”
● если 20-40%, “Поставьте устройство на зарядку”
● если 0%, “Устройство полностью разряжено”
В остальных случаях не выводите ничего. Используйте switch case.
*/
//
func chargeStatus(charge: Int) {
    switch charge {
    case 100: print("Devise is charged")
    case 70...80: print("You need to charge the device for six hours")

    case 20...40: print("Use battery charger")
    case 0: print("Battary is low")
    default: print("")
    }
}
chargeStatus(charge: 100)
