import UIKit
import Foundation


//MARK: - 3 HOMEWORK
/* 1
 Откройте презентацию по протоколам, в конце вы найдете блок с практикой.
 Выполните практику, создав простую игровую ситуацию с помощью протоколов
 */

protocol Movable {
    func run()
}

protocol Fightable {
    func fight()
}

protocol Hero: Movable, Fightable {
    var name : String { get set }
}

struct Farmer: Movable {
    func run() {
        print("Farmer: Run")
    }
}

struct Gardener: Movable {
    func run() {
        print("Gardener: Run")
    }
    
}

struct Butcher: Fightable {
    func fight() {
        print("Butcher: Fight")
    }
    
}

struct Boxer: Fightable {
    func fight() {
        print("Boxer: Fight")
    }
}

struct Batman: Hero {
    var name = "Batman"
    func fight() {
        print("\(name): Fight")
    }
    func run() {
        print("\(name): Run")
    }
}

class Tavern {
    var fighters: [Fightable]
    var movers: [Movable]
    init(fighers: [Fightable], movers: [Movable]) {
        self.fighters = fighers
        self.movers = movers
    }
    func enterTavern(hero: Hero) {
        hero.fight()
        for mover in movers {
            mover.run()
        }
        for fighter in fighters {
            fighter.fight()
        }
    }
}

let tavern = Tavern(fighers: [Boxer(), Butcher()], movers: [Farmer(), Gardener()])

//tavern.enterTavern(hero: Batman())


/*
 2. Лучший способ закрепить информацию, придумать свой способ применения протоколов. Откройте последний слайд практики по протоколам, и выполните задание. Необходимо создать свою мини игру, где вы могли бы использовать протоколы, но будет минимальный набор требований:
○ Должны быть функции, возвращающие опциональные значения
○ Эти функции должны вызываться и опционалы должны быть “развернуты”
○ Перенесите эту игру в XCode проект
Организуйте красивую файловую структуру, разные типы в разные файлы. Используйте папки. Этот проект мы будем загружать на github в качестве домашнего задания в следующем блоке
*/


//Protocols
protocol NoWork {
    func eat(val: String?) -> String
}

protocol Clean {
    var name: String { get set }
    func cleanHome()
}

protocol Vacuum {
    var name: String { get set }
    func vacuumCarpet()
}

protocol Wash {
    var name: String { get set }
    func washDishes()
}

protocol SuperClean: Clean, Vacuum, Wash {
}


//Characters

struct Mom: SuperClean {
    var name: String
    
    func cleanHome() {
        print("\(name) - can cleanHome, but no want")
    }
    
    func vacuumCarpet() {
        print("\(name) - can vacuumCarpet, but no want")
    }
    
    func washDishes() {
        print("\(name) - can washDishes, but no want")
    }
}

struct OlderSister: Clean {
    var name: String
    
    func cleanHome() {
        print("\(name) - can cleanHome")
    }
}

struct Brother: Vacuum {
    var name: String
    
    func vacuumCarpet() {
        print("\(name) - can vacuumCarpet")
    }
    
    
}

struct smallSister: Wash {
    var name: String
    
    func washDishes() {
        print("\(name) - can washDishes")
    }
    
    
}

struct Yana: SuperClean {
    var name: String
    
    func cleanHome() {
        print("\(name) - can cleanHome, she likes to clean")
    }
    
    func vacuumCarpet() {
        print("\(name) - can vacuumCarpet, she likes to clean")
    }
    
    func washDishes() {
        print("\(name) - can washDishes, she likes to clean")
    }
    
}

struct DogAlice {
    func eat(val: String?) -> String {
        if let val = val {
            print("\(val) - eat")
        }
        return val ?? ""
    }
}



protocol Test {
    func testUnwrap(val: String?) -> String
}

struct TestProtocol: Test {
    func testUnwrap(val: String?) -> String {
        if let val = val {
            print("\(val) - unwraped")
        }
        return val ?? ""
    }
    
}


 

/*
 Protocols, Extensions
 3. Напишите расширения на следующие типы:
 ○ Int - Функция возводит число в N-ую степень. Попробуйте решить задачу без использования стандартной функции pow(), решите ее с использованием циклов
 ○ String - Вычисляемое свойство isPalindrome. Возвращает Bool, в зависимости от того является ли строка палиндромом
 *Не забывайте, что вы можете искать информацию в интернете
 Протестируйте новые расширения c разными данными, используйте не менее трех тестов на каждый тип, которые максимально отличаются между собой
 */



extension Int {
    func exponentiation(pow: Int) -> Int {
        var result = 1
        var powCounter = 1
        while powCounter <= pow {
            result *= self
            powCounter += 1
        }
        return result
    }
}

2.exponentiation(pow: 3)
532.exponentiation(pow: 2)
-35.exponentiation(pow: 2)

//○ String - Вычисляемое свойство isPalindrome. Возвращает Bool, в зависимости от того является ли строка палиндромом






extension String {
    var isPalindrome: Bool {
        if self.count < 2 {
            return false
        }
        return self == String(self.reversed())
        
    }
    
}

let testPalindrome1 = "Bob"
let testPalindrome2 = "Bobob"
let testPalindrome3 = "B"
let testPalindrome4 = "Boba"
testPalindrome1.isPalindrome
testPalindrome2.isPalindrome
testPalindrome3.isPalindrome
testPalindrome4.isPalindrome


      
/*
Откройте презентацию по Generics, в конце презентации вы найдете практику
 5. Выполните практику на первом слайде.
 6. Выполните практику второго слайда. Здесь вы можете реализовать либо стек, либо
 связанный список (stack / linked list)
 */

//MARK: - Task 5
func swapValues<T>(value1: inout T, value2: inout T) {
    let storage = value1
    value1 = value2
    value2 = storage
}



func returnTuple<T>(value1: T, value2: T) -> (T, T) {
    (value2, value1)
}

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
func addValues<T: Summable>(_ val1: T, _ val2: T) -> T {
    val1 + val2
}



var str1 = 10
var str2 = 20
addValues(str1, str2)
print(addValues(10, 20))



/*
 6. Выполните практику второго слайда. Здесь вы можете реализовать либо стек, либо связанный список (stack / linked list)
 Задачи сложнее чем кажутся. Не забывайте, что вы можете искать информацию в интернете (информацию, но не решения ;)
 */



class Stack<Element> {
    
    var allData: [Element] = []
    
    func push(element: Element) {
        allData.append(element)
    }
    
    func pop() -> Element? {
        //        defer { allData.removeLast() }
        return allData.removeLast()
    }
    
}
    let myStack = Stack<String>()
    myStack.push(element: "Uno")
    myStack.push(element: "Dos")
    myStack.push(element: "Tres")
    myStack.push(element: "Quatro")


    let line1 = myStack.pop()
    let line2 = myStack.pop()
    let line3 = myStack.pop()
    let line4 = myStack.pop()

print(myStack.allData)

