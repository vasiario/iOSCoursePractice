import UIKit

//MARK: -  Homework 2

/*
 Классы
 1. Создайте класс Матрос (Sailor), в котором будет инициализатор, одно свойство - имя матроса и один метод "introduceMyself". При вызове этого метода, в консоль будет выводиться сообщение "Привет, меня зовут *имя матроса*!"
 2. Создайте класс Корабль, в котором будет инициализатор, два свойства: название корабля и массив “матросы”. Добавьте также функцию "introduceAll", которая будет выводить приветствие от имени всех матросов, после чего выводить сообщение "Мы с корабля *имя корабля*"
 3. Через инициализатор создайте 5 экземпляров класса Матрос и класс Корабль, в который передайте список созданных матросов. Вызовите функцию introduceAll. Вы должны получить в консоли приветствие от имени всех матросов и название корабля
 */

class Sailor {
    let name: String
    init(name: String) {
        self.name = name
    }
    func introduceMySelf() {
        print("Hi, my name is \(name)")
    }
}

class Ship {
    let name: String
    var arrayOfSailors: [Sailor] = []
    init(name: String, arrayOfSailors: [Sailor]) {
        self.name = name
        self.arrayOfSailors = arrayOfSailors
    }
    func introduceAll() {
        for sailor in arrayOfSailors {
            print("Hi, my name is \(sailor.name)")
        }
        print("We are from boat named \(name)")
    }
}


var ship = Ship(name: "Atlantida", arrayOfSailors: [])
ship.arrayOfSailors.append(Sailor.init(name: "Mark"))
ship.arrayOfSailors.append(Sailor.init(name: "Gena"))
ship.arrayOfSailors.append(Sailor.init(name: "Petr"))
ship.arrayOfSailors.append(Sailor.init(name: "Vitya"))
ship.arrayOfSailors.append(Sailor.init(name: "Gena"))
//ship.introduceAll()





//MARK: - 4. Создайте класс Titanic, наследник класса Ship. И класс TitanicSeilor, наследник Seilor. Пусть TitanicSeilor будет иметь ту же функцию introduseMyself, но сообщение будет выводить на английском. Аналогично класс Titanic, только пусть его функция introduceAll выводит в на двух языках: то же сообщение что и Ship, а после - такое же сообщение на английском. Не меняйте существующие классы Ship и Seilor

final class Titanic: Ship {
    override func introduceAll() {
        super.introduceAll()
        for sailor in arrayOfSailors {
            print("ENG: Hi, my name is \(sailor.name)")
        }
        print("ENG: We are from boat named \(name)")
    }
    }
   
let test = Titanic(name: ship.name, arrayOfSailors: [])
test.arrayOfSailors = ship.arrayOfSailors
//test.introduceAll()
    
 



final class TitanicSeilor: Sailor {
    override func introduceMySelf() {
        print("ENG: Hi, my name is \(name)")
    }
    
}
let test2 = TitanicSeilor(name: "Bob")

test2.introduceMySelf()



//MARK: - 5. Создайте класс Calculator, с функциями + - * /. Создайте класс CalculatorPro, который будет также вычислять процент от числа и возводить число в степен/

class Calculator {
    func plus(_ val1: Double, _ val2: Double) -> Double {
        val1 + val2
    }
    func minus(_ val1: Double, _ val2: Double) -> Double {
        val1 - val2
    }
    func multiply(_ val1: Double, _ val2: Double) -> Double {
        val1 * val2
    }
    func divide(_ val1: Double, _ val2: Double) -> Double {
        val1 / val2
    }
}

let test3 = Calculator()
test3.plus(10, 10)
test3.divide(10, 3)

class CalculatorPro: Calculator {
    func getProcent(_ val1: Double, _ val2: Double) -> Double {
        return Double((val1 * val2) / 100)
    }
    func exponentiation(_ val1: Double, _ val2: Double) -> Double {
       pow(val1, val2)
    }
}
print(CalculatorPro().getProcent(100, 3))
print(CalculatorPro().exponentiation(5, 2))


//5.1* Создайте класс SuperProCalc, наследник CalculatorPro, который будет вычислять сложные проценты для расчета суммы депозита на указанный период времени с указанной процентной ставкой

class SuperProCalc: CalculatorPro {
    func compoundInterest(numb1: Double, numb2: Double, numb3: Double) -> Double {
        let result = pow(numb1 * (1 + numb2/100), numb3)
        return result
    }
}


//MARK: - 6. Создайте функцию которая принимает 1 параметр, процент заряда батареи. Пусть функция вернет сообщения для пользователя в зависимости от этого процента:
/*● если 100%: “Устройство заряжено”,
● если 70-80%, “Необходимо зарядить устройство в течении 6 часов”
● если 20-40%, “Поставьте устройство на зарядку”
● если 0%, “Устройство полностью разряжено”
В остальных случаях не выводите ничего. Используйте switch case.
*/
//

func batteryProcent(procent: Int) -> String {
    switch procent {
    case 100: return "Battery is full now"
    case 70...80: return "70-80%"
    case 40...70: return "You need to charge your phone in next 4 hours"
    case 20...40: return "Charge now please"
    case 0: return "Your battery is empty"
    default: return "Ops...Error"
    }
}

let actualBatteryStatus = batteryProcent(procent: 68)
print(actualBatteryStatus)
