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



// 2. Найдите минимальный и максимальный элемент в массиве и выведите его в консоль
//2.1
//print(array1.min()!)
//print(array1.max()!)

//2.2
var valuesMin = 0
var valuesMax = 0

for array in array1 {
    if array < valuesMin {
    valuesMin = array
    } else if array > valuesMax {
        valuesMax = array
    }
}
print(valuesMin, valuesMax)
print("MinValue: \(valuesMin), MaxValue: \(valuesMax)")



//MARK: - 3. Найдите сумму элементов массива чисел и выведите ее в консоль

var valueSum = 0
for i in array1 {
    valueSum += i
}
print(valueSum)



// 5. Создайте словарь: var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4] Поменяйте местами значения по ключам “first” и “fourth”. Выведите в консоль итоговый словарь

var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]


var change1 = dictionary["fourth"]

dictionary["fourth"] = dictionary["first"]
dictionary["first"] = change1

//print(dictionary)






//var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
//let num = dictionary["first"]
//dictionary["first"] = dictionary["fourth"]
//dictionary["fourth"] = num
//print(dictionary)


// 4. Создайте массив с названиями всех месяцев, типа String. Затем создайте словарь и с помощью цикла задайте ему значения на основании массива: где в качестве ключей будут выступать цифры (индексы), а в качестве значений - элементы массива.

var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

var dict: [Int: String] = [:]
var count = 0
for value in months {
    count += 1
    dict[count] = value
}
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

