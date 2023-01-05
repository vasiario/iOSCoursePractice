//
//  Extensions.swift
//  HomeWork 3 - Xcode project
//
//  Created by vasiario on 03.01.2023.
//

import UIKit

class Extensions: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

//4. Вернитесь к созданной вами игре во втором задании и добавьте для всех протоколов реализацию методов по умолчанию


extension NoWork {
    func eat(val: String?) -> String {
        if let val = val {
            print("\(val) - eat")
        }
        return val ?? "NO VAL"
    }
}

extension Clean {
    var name: String { return "Cleaner - first value" }
    func cleanHome() {
        
    }
}

extension Vacuum {
    var name: String { return "Cleaner - first value" }
    func vacuumCarpet() {
        
    }
}

extension Wash {
    var name: String { return "Cleaner - first value" }
    func washDishes() {
        
    }
}





