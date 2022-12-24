import UIKit


//MARK: Practice
/*
 ●Создайте переменные типа Int “Проходной бал” и “Мой бал” которые будут содержать значения от 1 до 100. Создайте switch else, который будет проверять, является ли мой балл выше проходного или ниже. В одном случае пусть выводиться сообщение “К сожалению ваш балл ниже проходного”, во втором случае “Поздравляем! Вы поступили!”
 ●Попробуйте реализовать все то же самое, с помощью guard else
 */

var passingScore: Int = Int.random(in: 60...100)
var myScore: Int = Int.random(in: 0...100)

switch myScore {
case _ where passingScore >= myScore: print("Unfortunately your score is lower than the passing one")
case _ where passingScore <= myScore: print("Congratulations! you entered!")
default:
    print("Error Score")
}

func passExam() {
    guard passingScore <= myScore else {
        print("Unfortunately your score is lower than the passing one")
        return
    }
    print("Congratulations! you entered!")
}

passExam()


/*
 Practice *
 ● Создайте switch case, который будет проверять переменную типа Int, с возможными значениями от 1 до 7. В зависимости от ее значения выведите в консоль день недели
 ● Попрактикуйтесь с использованием выражений fallthrough и where, добавив их в switch case из прошлого задания
 */

var week: Int = Int.random(in: 1...7)
var isEasy = true
switch week {
case 1 where isEasy: print("monday")
case 2: print("tuesday")
    fallthrough
case 3: print("wednesday")
    fallthrough
case 4: print("thursday")
case 5: print("friday")
case 6: print("saturday")
case 7: print("sunday")
default:
    print("Error week")
}
