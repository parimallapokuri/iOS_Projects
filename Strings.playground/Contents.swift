import UIKit

var greeting = "Hello, playground"
var fact = "Swift is a type safe language"
var dev = "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"
print(author[author.index(before: author.endIndex)])
print(dev[dev.startIndex])
print(author[author.index(author.startIndex,offsetBy: 5)])
//print(author.index(author.startIndex,offsetBy: 5))
print(author[author.index(author.endIndex,offsetBy: -5)])
print(author[author.index(after: author.startIndex)])


fact += ", it has a better memory management"
print(fact)
print( fact[fact.index(fact.endIndex,offsetBy: -4)])
