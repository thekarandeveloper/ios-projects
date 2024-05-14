import Foundation
class Workout : Codable{
    var distance: Double
    var time: Double
    var identifier: Int
    
    init(distance: Double, time: Double, identifier: Int) {
        self.distance = distance
        self.time = time
        self.identifier = identifier
    }

}

//:  Make the `Workout` class above conform to the `CustomStringConvertible` protocol so that printing an instance of `Workout` will provide useful information in the console. Create an instance of `Workout`, give it an identifier of 1, and print it to the console.
extension Workout: CustomStringConvertible{
    
    var description: String{
        return "This is workout \(distance), \(time), \(identifier)"
    }
}

let workout1 = Workout(distance: 20.0, time: 30.8, identifier: 12)
print(workout1)

//:  Make the `Workout` class above conform to the `Equatable` protocol. Two `Workout` objects should be considered equal if they have the same identifier. Create another instance of `Workout`, giving it an identifier of 2, and print a boolean expression that evaluates to whether or not it is equal to the first `Workout` instance you created.
let workout2 = Workout(distance: 80.0, time: 30.8, identifier: 12)

extension Workout: Equatable{
    static func == (lhs: Workout, rhs: Workout)-> Bool{
        return lhs.identifier == rhs.identifier
    }
}

print(workout1 == workout2)
/*:
 Make the `Workout` class above conform to the `Comparable` protocol so that you can easily sort multiple instances of `Workout`. `Workout` objects should be sorted based on their identifier. 
 
 Create three more `Workout` objects, giving them identifiers of 3, 4, and 5, respectively. Then create an array called `workouts` of type `[Workout]` and assign it an array literal with all five `Workout` objects you have created. Place these objects in the array out of order. Then create another array called `sortedWorkouts` of type `[Workout]` that is the `workouts` array sorted by identifier. 
 */
extension Workout: Comparable{
    static func < (lhs: Workout, rhs: Workout)-> Bool{
        return lhs.identifier == rhs.identifier
    }
}

let workouts = [workout1, workout2]

let sortedWorkouts = workouts.sorted(by: <)

print(sortedWorkouts)
//:  Make `Workout` adopt the `Codable` protocol so you can easily encode `Workout` objects as data that can be stored between app launches. Use a `JSONEncoder` to encode one of your `Workout` instances. Then use the encoded data to initialize a `String`, and print it to the console.
let encoder = JSONEncoder()

if let encodedHuman = try? encoder.encode(workout1),
let description = String(data: encodedHuman, encoding: .utf8){
    print(description)
}

/*:
[Previous](@previous)  |  page 2 of 5  |  [Next: Exercise - Create a Protocol](@next)
 */
