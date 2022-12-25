import UIKit


//MARK: Practice
/*
 ● Создайте класс Calculator, который не содержит свойств, но содержит методы:
 ○ Прибавить - принимает два числа и возвращает их сумму
 ○ Вычесть - принимает два числа и возвращает их разницу
 ○ Умножить - принимает два числа и возвращает результат их умножения
 ○ Разделить - принимает два числа и возвращает результат их деления
 ○ Остаток от деления - принимает два числа и возвращает остаток от деления
 первого на второе
 */

class Calculator {
    func plus(_ first: Double, _ second: Double) -> Double {
        let sum = first + second
        return sum
    }
    func minus(_ first: Double, _ second: Double) -> Double {
        let difference = first - second
        return difference
    }
    func multiply(_ first: Double, _ second: Double) -> Double {
        let resultMult = first * second
        return resultMult
    }
    func divide(_ first: Double, _ second: Double) -> Double {
        let resultDiv = first / second
        return resultDiv
    }
    func remainder(_ num1: Int, _ num2: Int) -> Int {
        let resultRem = num1 % num2
        return resultRem
    }
}

/*
 Practice
 ● Создайте класс SuperCalculator. Пусть он будет наследоваться от Calculator и содержать дополнительные методы:
 ○ возвести в степень - принимает два параметра: число и степень в которую его нужно возвести. Возвращает результат возведения числа в степень
 ○ получить процент - принимает два параметра: число и процент который мы хотим получить. Например число 50 и процент 10. Функция возвращает 5, так как 5 это 10% от 50-ти
 ● Переопределите функции описанные в родительском классе, добавьте в каждую из них команду print(“I am SuperCalculator”). Протестируйте эти методы, посмотрите что будет, если не использовать вызов метода родителя через команду super
 ● Создайте экземпляр класса SuperCalculator и протестируйте все методы со своими значениями, выведя результаты в консоль через команду: print(SuperCalculator().myFunc())
 
 */

class SuperCalculator: Calculator {
    override func plus(_ first: Double, _ second: Double) -> Double {
        super.plus(first, second)
        print("I am SuperCalculator")
        return first + second
    }

    
    func raiseToDegree(_ val1: Double, _ val2: Double) -> Double {
        let result = pow(val1, val2)
        return result
    }
    func procent(_ val1: Double, _ val2: Double) -> Double {
        let procentAll = val1 * val2
        return procentAll / 100.0
    }
    
}

let test = SuperCalculator()
test.plus(10, 5)

print(SuperCalculator().plus(10, 10))

