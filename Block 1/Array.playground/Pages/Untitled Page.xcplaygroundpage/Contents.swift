import UIKit

// MARK: - Practice
/*
• Создайте массив включающий имена 5 студентов
• Создайте переменные newStudent1, newStudent2 и задайте им имена
• Добавьте новых студентов в массив: первого в конец списка, второго в
• начало списка. После этого никаких операций с newStudent1 и newStudent2 не требуется, продолжаем работу с массивами
• Удалите двоих студентов из массива: предпоследнего и первого
• Создайте еще один массив с двумя именами
• Создайте массив group, который состоит из двух предыдущих массивов
*/


var students = ["Kolya", "Gena", "Nikolay", "Petya", "Misha"]
var newStudent1 = "Ludmila"
var newStudent2 = "Irina"



students.insert(newStudent2, at: 0)
students.count
students.insert(newStudent1, at: 6)

students.remove(at: 5)
students.removeFirst()

let newArray: Array<String>
newArray = ["NewName1", "NewName2"]

var group: Array<String> = []


//group.append(contentsOf: students + newArray)
group += newArray + students
//group.remove(at: 0)
print(group)

/*
• Через команду print() выведите имена студентов:
о первого и последнего
о второго третего
• Выведите в консоль сообщения:
• В массиве содержится *** элементов
о Является ли массив пустым: *** (выведите bool значение)
• Создайте массив "newGroup", который содержит всех учеников из group
• Очистите массив group

*/

print(group.first!, group.last!)
print(group[1], group[2])
print("the array contains \(group.count) elements")
print("the array is empty - \(group.isEmpty)")

var newGroup: Array<String> = []
//newGroup = group
newGroup.append(contentsOf: group)
group.removeAll()
print(group)
