import UIKit
//MARK: Funcions-1 Practice
/*
 ●Напишите функцию принимающую два параметра: имя и фамилия. Пусть она возвращает полное имя человека
 ●Напишите функцию, которая принимает число и возвращает его квадратный корень
 ●Напишите функцию, которая принимает число и возвращает его во второй степени
 ●Напишите функцию, принимающую два параметра. Пусть она возвращает сумму квадратного корня первого параметра и второго параметра в квадрате. Используйте функции, что вы написали выше
 */

//●Напишите функцию принимающую два параметра: имя и фамилия. Пусть она возвращает полное имя человека

func fullName(name: String, surname: String) -> String {
    let result = name + " " + surname
    return result
}

fullName(name: "Pavel", surname: "Ibragimov")


//●Напишите функцию, которая принимает число и возвращает его квадратный корень

func squareRoot(firstValue: Double) -> Double {
    let result = sqrt(firstValue)
    return result
}
squareRoot(firstValue: 64)


//●Напишите функцию, которая принимает число и возвращает его во второй степени

func secondDegree(firstValue: Double) -> Double {
    let result = firstValue * firstValue
    return result
}
secondDegree(firstValue: 64)



/*
 
 func findSquare(number: Double) -> Double {
 let result = sqrt(number)
 return result
 }
 
 let sqare = findSquare(number: 16)
 
 print(sqare)
 
 or
 
 func powFunc(_ number1: Double, _ number2: Double) -> Double {
 let result = pow(number1, 2.0)
 return result
 }
 
 pow(6.0, 4.0)
 */

/*
 ●Напишите функцию, принимающую два параметра. Пусть она возвращает сумму квадратного корня первого параметра и второго параметра в квадрате. Используйте функции, что вы написали выше
 */

func nameValue(_ number : Double, _ number2 : Double) -> Double {
    let result = squareRoot(firstValue: number) + secondDegree(firstValue: number2)
    return result
}
nameValue(64, 2)

/*
 or *
 func calculations(num1: Double, num2: Double) -> Double {
 findSquare(number: num1) + secondPower(number: num2)
 }
 
 let myCalculation = calculations(num1: 16, num2: 5)
 
 print(myCalculation)
 
 or *
 
 func someMath(_ number1: Double, _ number2: Double) -> Double {
 let result = sqrtFunc(number1) + powFunc(number2, 2.0)
 return result
 }
 
 someMath(25.0, 5.0)
 */

/*
 Practice *
 ●Создайте цикл от 1 до 10, внутри которого создайте вложенный цикл
 от 1 до 10. На каждой итерации вложенного цикла вызовите функцию из прошлого задания. В качестве первого параметра передавайте номер итерации внешнего цикла, в качестве второго параметра передавайте номер итерации внутреннего цикла
 
 ●Попробуйте оформить выполненные домашние задания прошлой недели в виде функций
 */

for i in 1...10 {
    
    for index in 1...10 {
        print(nameValue(Double(i), Double(index)))
        
    }
}






/*
 6. Напишите функцию, которая принимает несколько параметров, имя человека, его профессию и количество
 дней отпуска. Пусть функция выводит фразу “Меня зовут ***, я работаю *** и у меня есть *** дней
 отпуска”.
 7. Модифицируйте функцию, добавив значения по умолчанию для профессии и количества дней отпуска.
 Попробуйте вызвать функцию три раза, каждый раз с разным количеством параметров.
 8. Добавьте пустую маску для первого параметра этой функции.
 9. Напишите три функции sum:
 ○ первая принимает два String параметра и выводит строку состоящую из суммы параметров
 ○ вторая принимает два Float параметра и возвращает их сумму
 ○ третья принимает два Int параметра и тоже возвращает их сумму
 10. Создайте по две переменные каждого типа данных: Int, String и Float и
 протестируйте все три функции.
 11. Напишите функцию, принимающую имя человека и замыкание, которое
 принимает String значение и ничего не возвращает.
 12. Вызовите в функции замыкание которое примет имя человека, если в нем есть символы, или строку
 “Bob”, если имя было пустым. Попробуйте вызвать функцию с разными параметрами.
 */

//MARK: - 6-8
func getVacation(_ name: String, profession work: String = "doctor", vacation days: Int = 5) {
    print("My name is \(name), Im a \(work), i have \(days) days of vacation.")
}

getVacation("Dmitry", profession: "programmer")
getVacation("Bob")
getVacation("Nency", profession: "QA engineer", vacation: 360)

//MARK: - 9
func sum1(val1: String, val2: String) {
    print(val1 + " " + val2)
}

func sum2 (val1: Float, val2: Float) -> Float {
    val1 + val2
}

func sum3(val1: Int, val2: Int) -> Int {
    val1 + val2
}

//MARK: - 10
let someInt1 = 4
let someInt2 = 34
let someFloat1: Float = 5.215
let someFloat2: Float = 25.2451
let someString1 = "Boris"
let someString2 = "Hokage"

sum1(val1: someString1, val2: someString2)
print(sum2(val1: someFloat1, val2: someFloat2))
print(sum3(val1: someInt1, val2: someInt2))

//MARK: - 11/12
//var arr = [2,4,5,6]
//
//func myMap<T>(for array: [Int], _ transform: (Int) -> T) -> [T] {
//    var result: [T] = []
//    for element in array {
//        result.append(transform(element))
//    }
//    return result
//}
//
//let test = myMap(for: arr){String($0 * $0)}
//print(test)
func getName(name: String = "Bob", closure: (String) -> ()) {
    closure(name)
}

getName(name: "Dima") { name in
    print(name)
}

getName{ name in
    print(name)
}

getName{print($0)}
