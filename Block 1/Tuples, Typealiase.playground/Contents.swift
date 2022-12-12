import UIKit

/*
MARK: - Practice Tuples, Typealias
 • Создайте переменные типов Int, String, Float и задайте в них цифровые
 значения
 Создайте переменную "sum" типа Double, в которой будет содержаться
 •сумма всех предыдущих переменных. Используйте приведение типов
 Если компилятор просит использовать "!" (Force unwrap), поставьте этот знак после приведения типа, в следующих уроках мы будем разбирать эту тему
*/

let numer: Int = 1000
let string1: String = "135"
let float1: Float = 1.3

var sum: Double

sum = Double(numer) + Double(string1)! + Double(float1)


/*
 Practice
 • Создайте по одному Typealias, которые соответствуют типам: String, Int, Float
 • Создайте три именованных Tuple с данными:
 о Фильм - Название фильма и год его выпуска
 • Смартфон Название смартфона и его цена
 • Страна - Название страны и ее столица
 _ Все типы внутри tuple замените на typalias
 • Выведите с помощью команды print:
 • Название фильма, Название телефона, Название страны о Потом пустой print()
 • Год выпуска фильма, цена телефона, столица страны
 */

typealias Name = String
typealias EUR = Float
typealias Year = Int

var film: (name: Name, year: Year) = ("Iron man", 2008)
var smartfone: (name: Name, price: EUR) = ("Iphone 14 pro", 1299)
var country: (name: Name, capital: Name) = ("Thailand", "Bangkok")


print("\nFilm: \(film.name), Phone: \(smartfone.name), Country: \(country.name)")
print("Year: \(film.year), Price: \(smartfone.price), Capital: \(country.capital)")


