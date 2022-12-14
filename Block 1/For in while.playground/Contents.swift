import UIKit


//MARK: - Practice for in while

/*
Необходимо знать: Массивы, условные операторы
• Создайте массив weekDays с рабочими днями недели
• Пройдите по нему в цикле for in и выведите каждый день в консоль
• Модифицируйте цикл, чтобы вывести в консоль сообщение:
«порядковый номер* - *название* дня недели
• Модифицируйте цикл, добавив условие, чтобы цикл выполнялся только для первых трех элементов
*/

let weekDays = ["monday", "tuesday", "wednesay", "thursday", "friday", "saturday", "sunday"]

for (index, weekday) in weekDays.enumerated() {
    if index < 3 {
        print(index + 1)
        print(weekday)
    }
}


/*
 • Создайте массив на 10 элементов с числами (возраст ваших знакомых).
 • Добавьте цикл for in который пройдется по этим элементам и выведет в консоль сообщение "Мне *** лет"
 • После чего добавьте проверку, младше 18 лет или старше. В первом случае выводим сообщение: "Ребенок", во втором: "Взрослый"
 • Для всех, кто младше 18 лет, измените сообщение "Ребенок" на "Я уже отпраздновал: ". После чего запустите вложенный цикл, который пройдется по количеству лет человека и выведет на каждой итерации
 *** лет. Например: "Я уже отпраздновал: ... 5 лет - 6 лет » 7 лет
 */


let agesMyFriends = [13, 54, 15, 65, 32, 23, 45, 62, 55, 67]
agesMyFriends.count

for age in agesMyFriends {
    print("my age \(age) years")
    if age < 18 {
        print("I have already celebrated \(age)")
    } else {
        print("adult")
    }
}
