import UIKit

/*
MARK: - Practice Variables - Constants. Primitive types_ Int, String, Bool.playground
• Create variables or constants where you can store: your
 age, title of your position, information about whether you are at home or not.
• Change the values:
  ○ age - add year
  ○ profession name - add the word “Senior” before the name
  ○ change your status to the opposite one
• Print all the data to the console, embedding it in a sentence: “I am *** years old,
  and I work at the position ***”
*/

var age = 24
var myProfession = "IOS Developer"
var inHome = false

age += 1
myProfession = "Senior \(myProfession) "
//print(myProfession)
inHome.toggle()

print("I'm \(age) years old, and i work for a position \(myProfession)")
