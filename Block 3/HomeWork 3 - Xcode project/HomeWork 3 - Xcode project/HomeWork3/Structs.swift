//
//  Structs.swift
//  HomeWork 3 - Xcode project
//
//  Created by vasiario on 03.01.2023.
//

import UIKit

class Structs: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let exemplar = Yana(name: "Yana - cleaner")
        exemplar.cleanHome()
    }
    


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




struct TestProtocol: Test {
    func testUnwrap(val: String?) -> String {
        if let val = val {
            print("\(val) - unwraped")
        }
        return val ?? ""
    }
    
}


struct TestProtocol1: Test1 {
    func washDishes() -> Int {
        return 1
    }
    
    var power: Int
    
    var name: String
    
}
