import UIKit

var greeting = "Hello, playground"
//Dictionaries
var capitals = ["Arkansas":"LittleRock","Georgia":"Atlanta","Missouri":"Jeff City"]
print(capitals)
print(capitals.count)
capitals["Texas"] = "Austin"
print(capitals)
var numbers = [1:"One",2:"two",3:"Three"]
print(numbers)

numbers[4] = "Four"
print(numbers)

var courses = [44542:"Java",44560:"Database",44613:"Data Visualization"]
print("Before Changing courses are: \(courses)")
courses[44542]="Java Script"
print("After Changing courses are: \(courses)")
//printing value for a particular key
print(courses[44542]!)
//courses.removeValue(forKey: 44542)
for (key,values) in courses
 {
    print("\(key) : \(values)")
   }
print(courses)

//*******Sets********//

var players : Set<String> = ["David Warner", "Virat Kohli",
"Kane Williamson", "Steve Smith"]

print(players.count)
print(players)
print(players.contains("Steve Smith"))

players.insert("Maxwell")
print(players)

players.remove("David Warner")
print(players)

var primeNumbers : Set<Int> = [2,3,5,7,11]
var numbersList : Set<Int> = [1,2,5,9]

var unionSet : Set<Int> = primeNumbers.union(numbersList)
print(unionSet)
var intersectionSet : Set<Int> =
primeNumbers.intersection(numbersList)
print(intersectionSet)

var subtractionSet : Set<Int> =
primeNumbers.subtracting(numbersList)
print(subtractionSet)

var symmDiffSet :Set<Int> = primeNumbers.symmetricDifference(numbersList)
print(symmDiffSet)

print(primeNumbers.isSubset(of: numbersList))




