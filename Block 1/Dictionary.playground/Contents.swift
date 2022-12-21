import UIKit
import Foundation

//MARK: - Practice - Dictionary
/*
• Создайте 3 dictionary, добавьте в каждый не менее трех элементов:
 o String: String - Страна: Столица
 o String: Int - Город: Почтовый код
 o String: Вool - Имя человека: Студент ли он
• Создайте еще одну переменную типа Dictionary; в которую сохраните по одному элементу из каждого из словарей выше и выведите ее значение в консоль (На желтые warnings и "optional(..)" значение в консоли мы пока не обращаем внимания)
• Удалите в первых трех словарях по одному элементу
*/

var countryCity = ["Thailand" : "Bangkok", "Indonesia": "Djakarta", "Kambodja": "Pnompen"]
var cityPostCod = ["Dubai" : 230123, "New York" : 135642, "Venece" : 636175]
var studentTest = ["Dima" : true, "Petya": false, "Savadi": true]

var newVarDict: [String: Any] = [:]
newVarDict["Thailand"] = countryCity["Thailand"]
newVarDict["Dubai"] = cityPostCod["Dubai"]
newVarDict["Dima"] = studentTest["Dima"]
print(newVarDict)

countryCity.removeValue(forKey: "Indonesia")
cityPostCod.removeValue(forKey: "New York")
studentTest["Savadi"] = nil
print(countryCity, cityPostCod, studentTest)


/*
• Создайте переменные:
 o Массив содержащий только ключи из последнего Dictionarv
 o Массив содержащий только значения из последнего Dictionary
• Выведите в консоль их значения
• Поменяйте местами значение первого и последнего ключа в этом массиве.
Не забывайте что вы всегда можете создавать дополнительные переменные
*/


//var onlyKeys = newVarDict.keys
//var onlyValues = newVarDict.values


var arrayOfKeys = [String](newVarDict.keys)
print(arrayOfKeys)

var arrayOfValues = [Any](newVarDict.values)
print(arrayOfValues)

/*
 var test = newVarDict.keys
 var someArrey = [String]()
 someArrey.append(contentsOf: test)

*/
var tmp = arrayOfKeys[2]
arrayOfKeys[2] = arrayOfKeys[0]
arrayOfKeys[0] = tmp
print(arrayOfKeys)

/*
var firstValue = arrayOfKeys.first
var lastValue = arrayOfKeys.last
var twoValue = arrayOfKeys[1]
arrayOfKeys.removeAll()
arrayOfKeys.append(lastValue!)
arrayOfKeys.append(twoValue)
arrayOfKeys.append(firstValue!)
*/
