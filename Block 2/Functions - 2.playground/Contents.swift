import UIKit
/*
Practice
●Напишите функцию, которая принимает несколько параметров, имя человека, его профессию и количество дней отпуска. Пусть функция выводит фразу “Меня зовут ***, я работаю *** и у меня есть *** дней отпуска”
●Модифицируйте функцию, добавив значения по умолчанию для профессии и количества дней отпуска. Попробуйте вызвать функцию три раза, каждый раз с разным количеством параметров
●Добавьте пустую маску для первого параметра этой функции
*/

func holiday(name: String = "", profession: String = "Senior IOS Dev", dayHoliday: Int = 100) {
    print("My name is \(name), i'm work \(profession), and i have \(dayHoliday) days holiday")
}

holiday(name: "Vasilii", profession: "IOS DEVELOPER", dayHoliday: 0)

holiday(name: "Vasilii")
holiday(name: "Vasilii", profession: "Team lead")
holiday(name: "Vasilii", dayHoliday: 500)

/*
 Practice
 ● Напишите три функции sum:
 ○ первая принимает два String параметра и выводит строку состоящую из суммы параметров
 ○ вторая принимает два Float параметра и возвращает их сумму
 ○ третья принимает два Int параметра и тоже возвращает их сумму
 ● Создайте по две переменные каждого типа данных: Int, String и Float и протестируйте все три функции*/

func sum(val1: String, val2: String) {
print(val1 + " " + val2)
}
sum(val1: "hello", val2: "world")

func sum(val3: Float, val4: Float) -> Float {
   let sumVal = val3 + val4
    return sumVal
}
print(sum(val3: 132, val4: 124))



func sum(val5: Int, val6: Int) -> Int {
    let sumVal2 = val5 + val6
    return sumVal2
}
print(sum(val5: 10, val6: 16))


var test1: () = sum(val1: "hello", val2: "IOS")
var test2: () = sum(val1: "Hello", val2: "MACOS")
var test3 = sum(val3: 135.362, val4: 135.642)
var test4 = sum(val3: 12, val4: 35)
var test5 = sum(val5: 125, val6: 24)
var test6 = sum(val5: 135, val6: 135)



/*
 
 ● Напишите функцию, принимающую имя человека и замыкание, которое принимает String значение и ничего не возвращает
 ● Вызовите в функции замыкание которое примет имя человека, если в нем есть символы, или строку “Bob”, если имя было пустым. Попробуйте вызвать функцию с разными параметрами
 */

func nameHuman (name: String, closure: (String) -> ()) {
    closure(name)
}

nameHuman(name: "Mikel") { name in
    if name.isEmpty {
        print("Bob")
    } else {
        print(name)
    }
}


nameHuman(name: "") { name in
    if name.isEmpty {
        print("Bob")
    } else  {
        print(name)
    }
}




