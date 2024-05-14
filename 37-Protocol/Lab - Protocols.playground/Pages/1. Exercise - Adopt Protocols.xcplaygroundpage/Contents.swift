/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */

import Foundation

class Human : Codable{
    var name : String
    var age : Int
    
    init(name : String, age: Int){
        self.name = name
        self.age = age
    }
    
}

var human1 = Human(name: "Karan", age: 20)
var human2 = Human(name: "Aman", age: 21)
//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
extension Human : CustomStringConvertible {
    var description: String {
        return "A human called \(name) is of age \(age)"
    }
}


print(human1)
print(human2)

//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
extension Human: Equatable {
    static func == (lhs: Human, rhs: Human) -> Bool{
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

print(human1 == human2)
print(human1 != human2)
//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
extension Human : Comparable{
   
    
    static func < (lhs: Human, rhs: Human) -> Bool{
        return lhs.age < rhs.age
    }
}

let human3 = Human(name: "Arpita", age: 20)
let human4 = Human(name: "Shweta", age: 20)
let human5 = Human(name: "Sharon", age: 21)


let people = [human1, human2, human3, human4, human5]

let sortedPeople = people.sorted(by: <)

print(sortedPeople)
//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
let jsonEncoder = JSONEncoder()

if let jsonData = try? jsonEncoder.encode(human1),
   let jsonString = String(data: jsonData, encoding: .utf8){
    print(jsonString)
}

/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
