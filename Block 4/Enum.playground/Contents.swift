import UIKit

//MARK: - Enum Practice
/*
 
 ●В презентации и в playgrounds были приведены варианты перечислений. Ключевая идея - каждый case может стать значением enum.
 Если значениями являются дни недели, то enum должен называться “День недели”. Попробуйте придумать два своих перечисления.
 Каждый из которых должен соответствовать ключевой идее описанной выше
 */

enum year: Int {
    case jan = 1
    case feb = 2
    case mart
    case apr
    case may
    case june
    case jul
    case aug
    case sept
    case okt
    case nov
    case dec
}
year.apr



/*
 ●В первом из ваших enum добавьте RawValue. Укажите его только
 для части case и протестируйте, создав несколько экземпляров этого enum
 */
let myBirth = year(rawValue: 1)

let myWifesBirthady = year.dec
myWifesBirthady.rawValue



/*
 ●Во второй enum добавьте функцию, в которой будет switch. Пусть функция возвращает какое-то значение в зависимости от значения enum
 */



enum City: CaseIterable {
    case Phuket
    case Pataya
    case Bahrein
    case Bangkok
    
    func test() -> String {
        switch self {
        case .Phuket, .Pataya:
            return "Chill"
        case .Bangkok, .Bahrein:
            return "A long time to go"
        }
    }
}
City.Bangkok

let testCity = City.Phuket
testCity.test()
let allCity = City.allCases




/*
 ●Создайте enum с ассоциативными значениями для каждого из его case. Протестируйте его, добавив функцию, которая принимает значение enum и возвращаемое значение зависит от принятого, по аналогии с примером из Playgrounds
 */

enum Water {
    case inBottleLitter(Int)
    case inTeapot(Float)
    case inCup(String)
    case test(Bool)
}

func waterTest(value: Water) -> String {
    switch value {
    case .inBottleLitter(let inBottleValue):
        return "water in BottleLitter - \(inBottleValue)"
    case .inTeapot(let inTeapotValue):
        return "water in inTeapot - \(inTeapotValue)"
    case .inCup(let inCupValue):
        return "water in inCup - \(inCupValue)"
    case .test(let testValue):
        return "water in test - \(testValue)"
    }
}

let water = Water.inBottleLitter(10)
let water2 = Water.inTeapot(10.54)
let water3 = Water.inCup("0.250 ml")
let water4 = Water.test(true)

let testWater1 = waterTest(value: water)
let testWater2 = waterTest(value: water2)
let testWater3 = waterTest(value: water3)
let testWater4 = waterTest(value: water4)



switch water2 {
case .inCup: print("ge")
case .inBottleLitter: print("greh")
case .inTeapot: print("ergher")
case .test: print("gew")
}
