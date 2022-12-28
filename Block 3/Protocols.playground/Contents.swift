import UIKit

//MARK: - Practice
/*
 Попробуем создать персонажей для игры о диком западе.
 ●Создайте протокол Movable, в котором будет метод run(), протокол Fightable с методом fight()
 ●Создайте протокол Hero, который включает оба протокола и свойство name
 ●Создайте не менее двух персонажей для игры на каждый протокол из трех описанных выше. Например struct Farmer: Movable { ... }, struct Butcher: Fightable и т д. Реализуйте методы в зависимости от структуры которую вы используете. В нашем примере в реализации метода run() у структуры Farmer мы можем вывести print(“Farmer: Run”), в методе fight() у Butcher можем вывести print(“Butcher: fight”)
 */

protocol Movable {
    func run()
}

protocol Flyable {
    func fly()
}

protocol Fightable {
    func figth()
}

protocol Hero: Movable, Flyable, Fightable {
    var name: String { get set }
}


//●Создайте не менее двух персонажей для игры на каждый протокол из трех описанных выше. Например struct Farmer: Movable { ... }, struct Butcher: Fightable и т д. Реализуйте методы в зависимости от структуры которую вы используете. В нашем примере в реализации метода run() у структуры Farmer мы можем вывести print(“Farmer: Run”), в методе fight() у Butcher можем вывести print(“Butcher: fight”)

struct Farmer: Movable {
    func run() {
        print("Farmer: Run")
    }
}

struct SonFarmers: Movable {
    func run() {
        print("SonFarmers: Run")
    }
}

struct DotherFarmers: Flyable {
    func fly() {
        print("DotherFarmers: Fly")
    }
}

struct WifeFarmers: Flyable {
    func fly() {
        print("WifeFarmers: Fly")
    }
}

struct FriendsWife: Hero {
    func figth() {
        
    }
    
    var name: String
    
    func run() {
        print("FriendsWife \(name): Run")
    }
    
    func fly() {
        print("FriendsWife \(name): Fly")
    }
}

struct GirlfriendSon: Hero {
    func figth() {
        
    }
    
    var name: String
    
    func run() {
        print("GirlfriendSon \(name): Run")
    }
    
    func fly() {
        print("GirlfriendSon: Fly")
    }
}

//Farmer().run()
//SonFarmers().run()
//DotherFarmers().fly()
//WifeFarmers().fly()
//FriendsWife(name: "Galya").fly()
//GirlfriendSon(name: "Lena").run()


/*
 У нас должно получиться 6 типов, которые соответствуют трем протоколам
 ●Создайте класс Tavern (таверна). У нее должен быть массив всех юнитов в таверне, которые умеют сражаться: var fighters: [Fightable] = [], и аналогичный массив movers, принимающий объекты что могут двигаться. Также в таверне будет метод enterTavern(hero: Hero)
 ●В реализации этого метода будет:
 ○ вызываться метод fight у Hero
 ○ выполняться цикл for по массиву movers, у каждого элемента будет
 вызываться метод run
 ○ аналогично с предыдущим пунктом, только у fighters метод fight()
 */

class Tavern {
    var fighters: [Fightable]
    var movers: [Movable]
    init(fighters: [Fightable], movers: [Movable]) {
        self.fighters = fighters
        self.movers = movers
    }
    func enterTavern(hero: Hero) {
        hero.figth()
        for i in movers {
            i.run()
        }
        for index in fighters {
            index.figth()
        }
    }
}


/*
●Время протестировать все созданные типы и протоколы. Создайте экземпляры всех типов: по 2 персонажа для Movable, Fightable и Hero. Пример: var alice = Fermer() ... Создайте экземпляр таверны.
●Присвойте свойствам таверны значения: в массив movers передайте экземпляры что могут двигаться, в массив fighters тех кто могут сражаться
●Обратитесь к таверне и вызовите метод enterTavern для двух экземпляров соответствующих протоколу Hero
●В итоге в консоли должно пройти текстовое сражение, вывод имени героя, посетившего таверну и начавшего сражение, после имена тех кто разбегаются, после имена тех кто сражается
*/

var petya = Farmer() //Movable
var kolya = SonFarmers() //Movable
var julia = DotherFarmers() //Flyable
var anna = WifeFarmers() //Flyable
var igor = FriendsWife(name: "Igor") //Hero
var milia = GirlfriendSon(name: "Milia") //Hero

var arrayMovers = Tavern(fighters: [igor, milia], movers: [petya, kolya])

arrayMovers.enterTavern(hero: igor)


arrayMovers.movers.append(petya)
arrayMovers.movers.append(kolya)
arrayMovers.fighters.append(milia)
arrayMovers.fighters.append(igor)
arrayMovers.fighters.append(igor)
arrayMovers.enterTavern(hero: igor)
