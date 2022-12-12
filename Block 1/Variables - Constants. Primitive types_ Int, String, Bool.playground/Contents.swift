import UIKit

/*
MARK: - Practice Variables - Constants. Primitive types_ Int, String, Bool.playground
 • Создайте переменные или константы, в которых можно хранить: ваш возраст, название вашей должности, информацию о том дома вы или нет
 • Измените значения:
 • возраст - добавить год в
 название профессии - добавить перед названием слово "Senior"
 о замените свой статус на противоположный
 • Выведите в консоль все данные, встроив их в предложение: "Мне *** лет, и я работаю на должности ***"
*/

var age = 24
var myProfession = "IOS Developer"
var inHome = false

age += 1
myProfession = "Senior \(myProfession) "
//print(myProfession)
inHome.toggle()

print("I'm \(age) years old, and i work for a position \(myProfession)")
