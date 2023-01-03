//
//  Protocols.swift
//  HomeWork 3 - Xcode project
//
//  Created by vasiario on 03.01.2023.
//

import UIKit

class Protocols: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

 
}

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

protocol Test1 {
    var name: String { get set }
    var power: Int { get set }
    func washDishes() -> Int
}

protocol Test {
    func testUnwrap(val: String?) -> String
}






