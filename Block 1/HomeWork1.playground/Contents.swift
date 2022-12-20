import UIKit

//MARK: - 1 HomeWork

/*
 Создайте массив с десятью случайными числами, из которых пять меньше
 нуля и пять больше нуля
 
 1. Замените все отрицательные числа на 0 и выведите массив в консоль
 
 2. Найдите минимальный и максимальный элемент в массиве и
 
 выведите его в консоль
 
 3. Найдите сумму элементов массива чисел и выведите ее в консоль
 */

var array1 = [35, 436, 653, 537, -23, -135, 0, -132, 65, -642]
//
//for (i, array) in array1 where array1 < 0 {
//    i = 0
//}
//print(array1)

for (index, array2) in array1.enumerated() {
    if array2 < 0 {
        array1[index] = 0
    }
}
print(array1)


/* new ver, test
 
 var randomNumbers: [Int] = []
 for _ in 1...5 {
     randomNumbers.append(Int.random(in: 0...100))
 }
 for _ in 1...5 {
     randomNumbers.append(Int.random(in: -100...0))
 }

 for (index, number) in randomNumbers.enumerated() where number < 0 {
     randomNumbers[index] = 0
 }

 func selectMaxAndMin(array: [Int]) -> (Int, Int) {
     var maxValue = array[0]
     var minValue = array[0]
     for (index, _) in array.enumerated() {
         if array[index] >= maxValue {
             maxValue = array[index]
         } else {
             minValue = array[index]
         }
     }
     return (maxValue, minValue)
 }
 selectMaxAndMin(array: randomNumbers)

 func sumOfArray(array: [Int]) -> Int {
     var sum = 0
     for numbers in randomNumbers {
         sum += numbers
     }
     return sum
 }
 sumOfArray(array: randomNumbers)
 */


// 2. Найдите через цикл минимальный и максимальный элемент в массиве и выведите его в консоль

var valuesMin = 0
var valuesMax = 0

for array in array1 {
    if array < valuesMin {
    valuesMin = array
    } else if array > valuesMax {
        valuesMax = array
    }
}

print("MinValue: \(valuesMin), MaxValue: \(valuesMax)")



//MARK: - 3. Найдите сумму элементов массива чисел и выведите ее в консоль

var valueSum = 0
for i in array1 {
    valueSum += i
}
print(valueSum)




//var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
//let num = dictionary["first"]
//dictionary["first"] = dictionary["fourth"]
//dictionary["fourth"] = num
//print(dictionary)


// 4. Создайте массив с названиями всех месяцев, типа String. Затем создайте словарь и с помощью цикла задайте ему значения на основании массива: где в качестве ключей будут выступать цифры (индексы), а в качестве значений - элементы массива.

//var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
//
//var dict: [Int: String] = [:]
//var count = 0
//for value in months {
//    count += 1
//    dict[count] = value
//}

//newVersion
var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]


var monthDictionary = [Int: String]()
for (index, month) in months.enumerated() {
    monthDictionary[index+1] = month
}


// 5. Создайте словарь: var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4] Поменяйте местами значения по ключам “first” и “fourth”. Выведите в консоль итоговый словарь

var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]


var change1 = dictionary["fourth"]

dictionary["fourth"] = dictionary["first"]
dictionary["first"] = change1

//print(dictionary)


// 6. Создайте пустой словарь calendar, так же вам понадобиться массив с месяцами из четвертого задания. С помощью цикла от 1970 до 2022 задайте значения для словаря. В качестве ключа пусть будет год, а значение это массив с месяцами.

var calendar: [Int: [String]] = [:]

for years in 1970...2022 {
    calendar[years] = months
}
print(calendar)
//var calendar: [Int: [String]] = [:]
//for years in 1970...2022 {
//    calendar[years] = months
//}


// 7. С помощью другого цикла добавьте в calendar на каждый год по одному месяцу с вашим названием, чтобы в каждом году вышло 13 месяцев.
var monthsNew = ["Gena"]
months += monthsNew
print(months)

//for years in 1970...2022 {
//    calendar[years] = months
//}
//print(calendar)


//for years in 1970...2022 {
//    calendar[years]?.append(contentsOf: monthsNew)
//}

/* 7.1 На основании словаря, который у вас получился в седьмом задании,
 давайте создадим новый словарь, который будет включать в себя также и даты,
 a именно массив с числами от 1 до 31:
 
 ● Создайте массив с числами от 1 до 31 с помощью цикла.
 ● Создайте новый словарь calendarPro, где в качестве ключей будут года, в
 качестве значений вложенные словари. В которых в качестве ключей названия
 месяцев, а в качестве значений массив с днями созданный выше.
 ● Выведите в консоль 1 сентября 2019 года.
 
 PS: Для заполнения calendarPro используйте только созданный массив с
 числами, и словарь с месяцами, и никаких других данных
 */
var calendarPro: [Int: [String: [Int]]] = [:]
var simpleCalendar: [String: [Int]] = [:]

var daysOfMonth = [Int]()
var dayNum = 0
for _ in 1...31 {
    dayNum += 1
    daysOfMonth.append(dayNum)
}
for month in months {
    simpleCalendar[month] = daysOfMonth
}
for year in 1991...2022 {
    calendarPro[year] = simpleCalendar
}
print(calendarPro[2019]!["September"]![0])




//8. Создайте 2 переменные с числами. Если значения равны, выведите в консоль их сумму умноженную на 3, если нет, выведите в консоль их сумму в случае если она четное число.
print(124%3)

var value1 = 1243
var value2 = 135
var value3 = value1 + value2
if value1 == value2 {
    print(3 * value3)
} else if value3 % 2 == 0 {
    print(value3)
}




//var numOne = 4
//var numTwo = 2
//
//
//if numOne == numTwo {
//    let sum = (numOne + numTwo) * 3
//    print(sum)
//} else if (numOne + numTwo) % 2 == 0 {
//    print(numOne + numTwo)
//}


// 9. Создайте строку, в которой будет храниться любая фраза из трех или более слов c восклицательным знаком в конце. Выведите в консоль первое и последнее слово из этой строки (без восклицательного знака)



let sentence = "Stop before you finish that sentence!"


let first = sentence.components(separatedBy: " ").first
var last = sentence.components(separatedBy: " ").last
last?.removeLast()
print("\(first!), \(last!)")

