import UIKit

//MARK: - Practice
/*
 
 ●Напишите расширение “square” на Int, позволяющее возводить число в квадрат
 ●Напишите расширение на String, которое позволит из текста вернуть:
 ○ Первое слово
 ○ Первую часть предложения до запятой
 ○ Первое предложение
 ○ Предложение с восклицательным знаком
 */

extension Int {
    var square: Int { return self * self }
}

let test1 = 124135.square

extension String {
    var returnFist: String { return self.components(separatedBy: " ").first ?? "" }
    var returnComma: String { return self.components(separatedBy: ",").first ?? "" }
    var returnFistSentens: String { return self.components(separatedBy: ".").first ?? "" }
    var returnSentensWithExclMark: String { return self.components(separatedBy: "!").first ?? "" }
}

let test2 = "hello. You are beautiful! I'm you boyfriend! How are you? If you want, i have gift for you."


/*
 Practice
 Создайте протокол Runnable с функцией run,  с функцией fly, Alive с функциями breath, eat и grow. В каждой функции пусть будет print с выводом в консоль названия функции.
 ●Создайте расширение на Alive, с дефолтной реализацией функций breathe, eat. В этой реализации должно выводиться сообщение в консоль “breathe” / “eat”
 ●Создайте 6 персонажей для вашей игры с помощью структур, каждый из них должен соответствовать как минимум одному протоколу
 ●Добавьте дефолтную реализацию для всех протоколов (в ней будет вывод сообщения с названием функции через команду print())
 ●В половине созданных структур реализуйте методы протокола, в которых будет выводиться название функции и название структуры, например print(“Iron man - Fly”)
 */

protocol Runnable {
    func run()
}

protocol Flyable {
    func fly()
}

protocol Alive {
    func breath()
    func eat()
    func grow()
}



extension Alive {
    func breath() {
        print("breath")
    }
    func eat() {
        print("eat")
    }
    func grow() {
        print("grow")
    }
}


extension Runnable {
    func run() {
        print("run - Runnable")
    }
}
extension Flyable {
    func fly() {
        print("fly - Flyable")
    }
}

struct alive: Alive {
    let name: String
    
    func breath() {
        print("\(name) - Breath")
    }
    func eat() {
        print("\(name) - Eat")
    }
    func grow() {
        print("\(name) - Grow")
    }
}

struct Petya: Runnable {
    func run() {
        
    }
}

struct Olivia: Runnable, Alive {
    let name: String
    
    func run() {
        print("\(name) - Run")
    }
    func breath() {
        print("\(name) - Breath")
    }
    func eat() {
        print("\(name) - Eat")
    }
    func grow() {
        print("\(name) - Grow")
    }
}
struct Gena: Flyable {
    func fly() { }
}



struct Viktor: Flyable {
    func fly() {
        
    }
}

struct Julia: Alive {
    let name: String
    
    func breath() {
        print("\(name) - breath")
    }
    func eat() {
        print("\(name) - eat")
    }
    func grow() {
        print("\(name) - grow")
    }
    
}

struct Kostya: Alive {
    let name: String
    
    func breath() {
        print("\(name) - breath")
    }
    func eat() {
        print("\(name) - eat")
    }
    func grow() {
        print("\(name) - grow")
    }
    
}
