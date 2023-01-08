import UIKit

//MARK: - Practice POP

/*
Создаем персонажей для игры:
●Создайте enum VehicleType: electric / nonElectric
●Создайте протокол Vehicle, который будет включать свойства: weight: Float, speed: Float, type: VehicleType, canFly: Bool. Все перечисленные свойства можно пометить как { get }. И функцию prepare()
●Расширьте протокол Vehicle с реализацией функции prepare: если Vehicle electric, выводим в консоль сообщение "Charge", если nonElectric, выводим сообщение "Refuel". Так же задайте значение false для свойства canFly
*/

enum VehicleType {
    case electric
    case nonElectric
}

protocol Vehicle {
    var weight: Float { get }
    var speed: Float { get }
    var canFly: Bool { get }
    var type: VehicleType { get }
    func prepare()
}

extension Vehicle {
    func prepare() {
        switch type {
        case .electric: print("Charge")
        case .nonElectric: print("Refuel")
        }
    }
    var canFly: Bool {
        return false
    }
}

/*
 ● Создайте протокол FlyableVehicle c функцией getMaxHight -> Float
 ● Создайте протокол Vehicle для объектов реализующих FlyableVehicle, добавьте по
 умолчанию для canFly значение true, type - nonElectric. Реализуйте функцию getMaxHight. Если это electric объект, пусть он возвращает weight + speed, если нет, то weight * speed
 ● Создайте структуры Car, ElectricCar, AirPlane и создайте их экземпляры. Внутри структур задавать значения по умолчанию не обязательно, инициализатор будет присутствовать у структур по умолчанию
 */

protocol FlyableVehicle {
    func getMaxHight() -> Float
}

extension Vehicle where Self: FlyableVehicle {
    var canFly: Bool {
        return true
    }
    var type: VehicleType {
        return .nonElectric
    }
    func getMaxHight() -> Float {
        switch type {
        case .electric: do { return weight + speed }
        case .nonElectric: do { return weight * speed }
        }
    }
}

struct Car: Vehicle {
    var weight: Float
    var speed: Float
    var type: VehicleType
}

struct ElectricCar: Vehicle {
    var weight: Float
    var speed: Float
    var type: VehicleType
}

struct Airplane: Vehicle, FlyableVehicle {
    var weight: Float
    var speed: Float
}

let jaguarFType = Car(weight: 1500, speed: 300, type: .nonElectric)
let bmwI3 = ElectricCar(weight: 1100, speed: 150, type: .electric)
let boing777 = Airplane(weight: 10000, speed: 900)

/*
● Выведите в консоль свойства у Car и electricalCar: type canFly. У airPlane выведите свойство canFly и вызовите функцию getMaxHight
● Создайте структуру ElectricalAirplane, ее экземпляр c теми же данными которые вы использовали для создания обычного самолета. Выведите в консоль значение, которое возвращает функция getMaxHight()
*/

print(" jaguar can fly? - \(jaguarFType.canFly)")
print(" bmwI3 can fly? - \(bmwI3.canFly)")
print("airplane can fly - \(boing777.canFly) and maxHight = \(boing777.getMaxHight())")

struct ElectricalAirplane: Vehicle, FlyableVehicle {
    var weight: Float
    
    var speed: Float

}

let boing777NEW = ElectricalAirplane(weight: 10000, speed: 900)
print("airplane boing777NEW maxHight = \(boing777NEW.getMaxHight())")
