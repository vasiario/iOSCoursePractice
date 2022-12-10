import UIKit

/*
MARK: - Practice Tuples, Typealias
 • Create variables of Int, String, Float types and set numeric
 values in them
 Create a "sum" variable of type Double, which will contain
 •sum of all previous variables. Use type casting
 If the compiler asks you to use " (Force unwrap), put this sign after the type conversion, in the following lessons we will analyze this topic
*/

let numer: Int = 1000
let string1: String = "135"
let float1: Float = 1.3

var sum: Double

sum = Double(numer) + Double(string1)! + Double(float1)


/*
 • Create one Typealias that correspond to the types: String, Int, Float

 • Create three named Tuples with data:
 About the Movie - The name of the movie and the year of its release
 • Smartphone The name of the smartphone and its price
 • Country - The name of the country and its capital

 • Replace all types inside tuple with typalias

 • Output using the print command:
 • Movie name, Phone name, Country name about Then empty print()
 • Movie release year, Phone price, Country capital */

typealias Name = String
typealias EUR = Float
typealias Year = Int

var film: (name: Name, year: Year) = ("Iron man", 2008)
var smartfone: (name: Name, price: EUR) = ("Iphone 14 pro", 1299)
var country: (name: Name, capital: Name) = ("Thailand", "Bangkok")


print("\nFilm: \(film.name), Phone: \(smartfone.name), Country: \(country.name)")
print("Year: \(film.year), Price: \(smartfone.price), Capital: \(country.capital)")


